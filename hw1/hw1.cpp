#include <iostream>
#include <opencv2/opencv.hpp>
#include <string>
#include <vector>

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{
    // initialize VideoWriter
    int frameFPS = 30;
    int frameWidth = 640, frameHeight = 360;
    Size frameSize = Size(frameWidth, frameHeight);
    string resultName = "result.avi";
    bool isColor = true;
    VideoWriter writer = VideoWriter(resultName, VideoWriter::fourcc('M', 'J', 'P', 'G'), frameFPS, frameSize, isColor);

    string filePath = argv[1];
    string info = "3190103303 Haoming Lyu";

    // process images
    vector<string> imgPaths;
    glob(filePath + "/assets/*.jpg", imgPaths);
    for (auto &each : imgPaths) {
        Mat img = imread(each);
        Mat imgResized;
        resize(img, imgResized, frameSize);
        putText(
            imgResized,
            info,
            Point(30, 320),
            FONT_HERSHEY_SCRIPT_COMPLEX,
            1,
            Scalar(200, 200, 250),
            2,
            LINE_AA
        );
        for(int i = 0; i < 60; i++) {
            writer.write(imgResized);
        }
    }

    // process video
    vector<string> aviPaths;
    glob(filePath + "/assets/*.avi", aviPaths);
    string videoPath = aviPaths[0];
    VideoCapture capture = VideoCapture(videoPath);
    Mat frame, frameResized;
    while (1) {
        capture >> frame;
        if (frame.empty()) break;
        resize(frame, frameResized, frameSize);
        putText(
            frameResized,
            info,
            Point(30, 320),
            FONT_HERSHEY_SCRIPT_COMPLEX,
            1,
            Scalar(200, 200, 250),
            2,
            LINE_AA
        );
        writer.write(frameResized);
    }

    writer.release();
}