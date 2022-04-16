<div class="cover" style="page-break-after:always;font-family:方正公文仿宋;width:100%;height:100%;border:none;margin: 0 auto;text-align:center;">
    <div style="width:50%;margin: 0 auto;height:0;padding-bottom:10%;">
        <img src="https://gitee.com/Keldos-Li/picture/raw/master/img/%E6%A0%A1%E5%90%8D-%E9%BB%91%E8%89%B2.svg" alt="校名" style="width:100%;"/>
    </div>
    </br></br></br></br>
    <div style="width:50%;margin: 0 auto;height:0;padding-bottom:40%;">
        <img src="https://gitee.com/Keldos-Li/picture/raw/master/img/%E6%A0%A1%E5%BE%BD-%E9%BB%91%E8%89%B2.svg" alt="校徽" style="width:100%;"/>
   </div>
    </br></br></br></br></br>
<p style="text-align:center;font-size:14pt;margin: 0 auto">浙江大学实验报告</p>
	</br>
	</br>
	<table style="border:none;text-align:center;width:72%;font-family:仿宋;font-size:14px; margin: 0 auto;">
	<tbody style="font-family:方正公文仿宋;font-size:12pt;">
	  <tr style="font-weight:normal;"> 
	        <td style="width:20%;text-align:right;">课　　程</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋">计算机视觉 </td>     </tr>
    <tr style="font-weight:normal;"> 
	        <td style="width:20%;text-align:right;">实验名称</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋">birdeye</td>     </tr>
	    <tr style="font-weight:normal;"> 
	        <td style="width:20%;text-align:right;">姓　　名</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋"> 吕皓明</td>     </tr>
	        <td style="width:20%;text-align:right;">专　　业</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋"> 计算机科学与技术</td>     </tr>
	    <tr style="font-weight:normal;"> 
	        <td style="width:20%;text-align:right;">学　　号</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋">3190103303 </td>     </tr>
	    <tr style="font-weight:normal;"> 
	        <td style="width:20%;text-align:right;">指导老师</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋">宋明黎</td>     </tr>
	        <td style="width:20%;text-align:right;">日　　期</td>
	       <td style="width:2%">：</td> 
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋">2021/12/26</td>     </tr>
	</tbody>              
	</table>
</div>

## 实验目的和要求

* 参考Learning OpenCV示例18-1，利用棋盘格图像进行相机定标，将参数写入xml文件保存。
* 参考示例19-1，根据求得的内参实现鸟瞰图（俯视）转换。

## 实验内容和原理

1. 结合18-1和19-1。

## 实验步骤和分析

### 阅读示例

`example_18-01_from_disk.cpp`和`example_19-01.cpp`

### combine

* 修改`example_18-01_from_disk.cpp`
    ```c++
    #define main e18_2
    #define help help18_2
    
    // adjust argv
    board_w = atoi(argv[1]);
    board_h = atoi(argv[2]);
    int n_boards = atoi(argv[3]);  // how many boards max to read
    delay = atof(argv[4]);         // milisecond delay
    image_sf = atof(argv[5]);
    
    string folder = argv[6];
    ```

* 修改`example_19-01.cpp`
    ```c++
    #define main e19_1
    #define help help19_1
    
    // adjust argv
    int board_w = atoi(argv[1]);
    int board_h = atoi(argv[2]);
    
    cv::FileStorage fs(argv[argc - 2], cv::FileStorage::READ);
    cv::Mat gray_image, image, image0 = cv::imread(argv[argc - 1], 1);
    if (image0.empty()) {
        cout << "Error: Couldn't load image " << argv[argc - 1] << endl;
        return -1;
    }
    ```

* 编写`hw4.cpp`
    ```c++
    #include "hw4.h"
    
    int main(int argc, char** argv)
    {
        switch (argc)
        {
        case 8:
            e18_1(argc, argv);
            break;
        case 9:
            e18_2(argc, argv);
            break;
        default:
            return -1;
        }
        e19_1(argc, argv);
    }
    ```


## 实验环境及运行方法

*   实验环境：Mac OS

*   运行方法（举例）

    ```bash
    make
    ./hw4 12 12 28 100 0.5 calibration/ intrinsics.xml birdseye/IMG_0215L.jpg
    ```
    


## 实验结果展示
![image-20211226114502521](../../../../../Library/Application Support/typora-user-images/image-20211226114502521.png)

![image-20211226114553969](../../../../../Library/Application Support/typora-user-images/image-20211226114553969.png)

![image-20211226114823374](../../../../../Library/Application Support/typora-user-images/image-20211226114823374.png)

## 心得体会

本次实验其实在内容上来说并不是很难，可以说代码量是非常小的。我觉得重点还是在理解给的example code上面，可以说对于birdseye等的理解更加深入了。
