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
	        <td style="width:40%;font-weight:normal;border-bottom: 1px solid;text-align:center;font-family:仿宋">HONOR</td>     </tr>
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

* 利用CNN进行手写数字识别

## 实验内容和原理

卷积神经网络

## 实验步骤和分析

### 导入库

```python
import torch
from torch import nn
from torch.nn import functional as F
from torch.autograd import Variable
from torch import optim
import torchvision
```

### 数据导入`DataLoader`

```python
batch_size = 100
train_loader = torch.utils.data.DataLoader(
    torchvision.datasets.MNIST('mnist_data',train=True,download=True,
                                transform=torchvision.transforms.Compose([
                                    torchvision.transforms.ToTensor(),
                                    torchvision.transforms.Normalize(
                                        (0.137,),(0.3081,))
                                ])),
    batch_size=batch_size,shuffle=True)
test_loader = torch.utils.data.DataLoader(
    torchvision.datasets.MNIST('mnist_data/',train=False,download=True,
                               transform=torchvision.transforms.Compose([
                                   torchvision.transforms.ToTensor(),
                                   torchvision.transforms.Normalize(
                                       (0.1307,),(0.3081,))
                               ])),
    batch_size=batch_size,shuffle=False)
```

### 定义CNN

```python
class CNN(nn.Module):
    def __init__(self):
        super().__init__()

        self.cnn1 = nn.Conv2d(in_channels=1, out_channels=16, kernel_size=5, stride=1, padding=0)
        self.relu1 = nn.ReLU()
        self.maxpool1 = nn.MaxPool2d(kernel_size=2)

        self.cnn2 = nn.Conv2d(in_channels=16, out_channels=32, kernel_size=5, stride=1, padding=0)
        self.relu2 = nn.ReLU()
        self.maxpool2 = nn.MaxPool2d(kernel_size=2)

        self.fc = nn.Linear(32 * 4 * 4, 10)

    def forward(self, x):
        out = self.cnn1(x)
        out = self.relu1(out)
        out = self.maxpool1(out)

        out = self.cnn2(out)
        out = self.relu2(out)
        out = self.maxpool2(out)

        out = out.view(out.size(0), -1)

        out = self.fc(out)

        return out
```

### 定义参数

```python
n_iters = 2500
num_epochs = n_iters / (60000 / batch_size)
num_epochs = int(num_epochs)
    
model = CNN()

error = nn.CrossEntropyLoss()

learning_rate = 0.1
optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate)
```

### 训练并测试

```python
count = 0
for epoch in range(num_epochs):
    for i, (images, labels) in enumerate(train_loader):
        train = Variable(images.view(100,1,28,28)).float()
        labels = Variable(labels)
        
        # Clear gradients
        optimizer.zero_grad()
        
        # Forward propagation
        outputs = model(train)
        
        # Calculate softmax and ross entropy loss
        loss = error(outputs, labels)
        
        # Calculating gradients
        loss.backward()
        
        # Update parameters
        optimizer.step()
        
        count += 1
        
        if count % 50 == 0:
            # Calculate Accuracy         
            correct = 0
            total = 0
            # Iterate through test dataset
            for images, labels in test_loader:
                
                test = Variable(images.view(100,1,28,28)).float()
                
                # Forward propagation
                outputs = model(test)
                
                # Get predictions from the maximum value
                predicted = torch.max(outputs.data, 1)[1]
                
                # Total number of labels
                total += len(labels)
                
                correct += (predicted == labels).sum()
            
            accuracy = 100 * correct / float(total)
            
        if count % 500 == 0:
            # Print Loss
            print('Iteration: {}  Loss: {}  Accuracy: {} %'.format(count, loss.data, accuracy))
```


## 实验环境及运行方法

*   实验环境：Mac OS

*   运行方法

    ipynb运行，可以直接RUN ALL
    


## 实验结果展示
```
Iteration: 500  Loss: 0.09648547321557999  Accuracy: 98.12999725341797 %
Iteration: 1000  Loss: 0.009674507193267345  Accuracy: 98.72000122070312 %
Iteration: 1500  Loss: 0.031248390674591064  Accuracy: 98.9000015258789 %
Iteration: 2000  Loss: 0.002966133877635002  Accuracy: 98.87999725341797 %
```

## 心得体会

因为AI已经小有入门，所以这个经典的手写数字识别的题目肯定是做过了。这次作业直接拿了以前参加kaggle上面竞赛的自己提交的代码，修改了一下数据读取就好了。