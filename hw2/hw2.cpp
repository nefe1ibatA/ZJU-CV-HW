#include <iostream>
#include <opencv2/opencv.hpp>
#include <string>

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{
    string filePath;
    try {
        filePath = argv[1];
    }
    catch(const exception &e) {
        cerr << e.what() << endl;
    }

    // read the origin image
    Mat img = imread(filePath);

    // read the gary image
    Mat grayImg;
    cvtColor(img, grayImg, COLOR_BGR2GRAY);

    // read the binary image
    Mat binaryImg;
    threshold(grayImg, binaryImg, 128, 255, THRESH_BINARY);

    // find the contours
    vector<vector<Point>> contours;
    findContours(binaryImg, contours, RETR_LIST, CHAIN_APPROX_SIMPLE);

    // fit the ellipses
    for (auto &it : contours) {
        if (it.size() < 6) continue;
        Mat points;
        Mat(it).convertTo(points, CV_32F);
        RotatedRect box = fitEllipse(points);
        ellipse(img, box, Scalar(0, 0, 255), 1, LINE_AA);
    }

    imwrite("out_2.png", img);
}