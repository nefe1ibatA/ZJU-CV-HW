#include <iostream>
#include <opencv2/opencv.hpp>
#include <vector>
#include <string>

using namespace std;
using namespace cv;

const Size standardSize = Size(50, 50);

int main(int argc, char **argv)
{
    vector<Mat> dataset;
    vector<Mat> eigenFaces;
    string filePath = "../JAFFE/train";
    double energyPercent = atof(argv[1]);
    string modelName = argv[2];
    vector<string> imgPaths;
    glob(filePath + "/*.tiff", imgPaths);

    // read img
    for (auto &each: imgPaths) {
        Mat img = imread(each, IMREAD_GRAYSCALE);
        resize(img, img, standardSize);
        normalize(img, img, 255, 0, NORM_MINMAX);
        dataset.push_back(img);
    }
    
    // calculate mean & covar
    Mat mean, covar;
    calcCovarMatrix(dataset, covar, mean, COVAR_NORMAL);
    
    // eigen
    Mat eigenValues, eigenVectors;
    eigen(covar, eigenValues, eigenVectors);
    int eigenCount = eigenVectors.rows * energyPercent;
    Mat AT = Mat(eigenCount, standardSize.height * standardSize.width, CV_64F);
    Mat A = AT.t();
    vector<Mat> topTens;
    Mat topTen;
    for (int i = 0; i < eigenCount; i++) {
        Mat tmp1 = Mat(standardSize.height, standardSize.width, CV_64F);
        Mat tmp2 = Mat(standardSize.height, standardSize.width, CV_8UC1);
        for (int j = 0; j < standardSize.height * standardSize.width; j++) {
            tmp1.at<double>(j / standardSize.width, j % standardSize.width) = eigenVectors.at<double>(i, j);
            AT.at<double>(i, j) = eigenVectors.at<double>(i, j);
            A.at<double>(j, i) = eigenVectors.at<double>(i, j);
        }
        normalize(tmp1, tmp1, 255, 0, NORM_MINMAX);
        tmp1.convertTo(tmp2, CV_8UC1);
        eigenFaces.push_back(tmp2);
        if (i < 10) {
            topTens.push_back(tmp2);
        }
    }
    hconcat(topTens, topTen);
    imwrite("topTen.jpg", topTen);

    FileStorage storage("../" + modelName, FileStorage::WRITE);
    storage << "model" << A;
    storage.release();
}