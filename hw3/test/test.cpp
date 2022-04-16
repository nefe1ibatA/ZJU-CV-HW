#include <iostream>
#include <opencv2/opencv.hpp>
#include <vector>
#include <string>

using namespace std;
using namespace cv;

const Size standardSize = Size(50, 50);

int main(int argc, char **argv)
{
    string fileName = argv[1];
    string modelName = argv[2];

    Mat eigenM;
    FileStorage storage("../" + modelName, FileStorage::READ);
    storage["model"] >> eigenM;
    storage.release();

    Mat testImg = imread("../JAFFE/test/" + fileName, IMREAD_GRAYSCALE);
    resize(testImg, testImg, standardSize);
    normalize(testImg, testImg, 255, 0, NORM_MINMAX);
    Mat testMat = testImg.reshape(0, 1);
    testMat.convertTo(testMat, CV_64F);
    Mat testVec = testMat * eigenM;

    vector<string> imgPaths;
    glob("../JAFFE/train/*.tiff", imgPaths);
    double minDis = -1;
    Mat mostSim;
    string mostSimName;
    for (auto &each: imgPaths) {
        Mat img = imread(each, IMREAD_GRAYSCALE);
        resize(img, img, standardSize);
        img = img.reshape(1, 1);
        img.convertTo(img, CV_64F);
        Mat judVec = img * eigenM;
        Mat differ = testVec - judVec;
        double dis = norm(differ, NORM_L2);
        if (dis < minDis || minDis == -1) {
            minDis = dis;
            img.reshape(1, standardSize.height).convertTo(mostSim, CV_8UC1);
            mostSimName = each;
        }
    }

    string info = mostSimName.substr(15, 5);
    putText(
        testImg,
        info,
        Point(0, 30),
        FONT_HERSHEY_SIMPLEX,
        0.5,
        Scalar(40, 40, 50),
        1,
        LINE_AA
    );

    imshow("result", testImg);
    imshow("Most Similar", mostSim);

    waitKey(0);
}