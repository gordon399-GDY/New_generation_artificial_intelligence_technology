function[x_train,y_train,x_test,y_test]=getdata()
% 把图片变成像素矩阵
% path :图片路径 
% x_train:训练样本像素矩阵(784,4000)
% y_train:训练样本标签(10,4000)
% x_test:测试样本像素矩阵(784,1000)
% y_test:测试样本标签(10,1000)

x_train = [];
for i=0:9
    for j=0:399
        %%%%%%%%%%%x=im2double(imread(strcat('D:\Documents\MATLAB\images4000\',num2str(i),'_', num2str(j),'.bmp')));
        x=im2double(imread(strcat('D:\Handwritten_Digits_Recognition\images4000\',num2str(i),'_', num2str(j),'.bmp')));
        x=reshape(x,784,1);         % 将28*28的数值矩阵变为784*1,每列代表一幅图
        x_train = [x_train,x];      % 每循环一次加入一列数据
    end
end

x_test =[];
for i=0:9
    for j=401:500
        %%%%%%%%%%%%x=im2double(imread(strcat('D:\Documents\MATLAB\images_test1000\',num2str(i),'_', num2str(j),'.bmp')));
        x=im2double(imread(strcat('D:\Handwritten_Digits_Recognition\images_test1000\',num2str(i),'_', num2str(j),'.bmp')));
        x=reshape(x,784,1);         % 将28*28的数值矩阵变为784*1,每列代表一幅图
        x_test = [x_test,x];        % 每循环一次加入一列数据
    end
end

% 读取标签文件，注意：由于标签的存储问题，读入后需要进行转置
data=xlsread('label1.xls');
data2=xlsread('label2.xls');
y_train=data';
y_test = data2';

% 返回的参数
x_train;
y_train;
x_test;
y_test;

end



