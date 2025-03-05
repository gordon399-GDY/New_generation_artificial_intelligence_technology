function[x_train,y_train,x_test,y_test]=getdata()
% ��ͼƬ������ؾ���
% path :ͼƬ·�� 
% x_train:ѵ���������ؾ���(784,4000)
% y_train:ѵ��������ǩ(10,4000)
% x_test:�����������ؾ���(784,1000)
% y_test:����������ǩ(10,1000)

x_train = [];
for i=0:9
    for j=0:399
        %%%%%%%%%%%x=im2double(imread(strcat('D:\Documents\MATLAB\images4000\',num2str(i),'_', num2str(j),'.bmp')));
        x=im2double(imread(strcat('D:\Handwritten_Digits_Recognition\images4000\',num2str(i),'_', num2str(j),'.bmp')));
        x=reshape(x,784,1);         % ��28*28����ֵ�����Ϊ784*1,ÿ�д���һ��ͼ
        x_train = [x_train,x];      % ÿѭ��һ�μ���һ������
    end
end

x_test =[];
for i=0:9
    for j=401:500
        %%%%%%%%%%%%x=im2double(imread(strcat('D:\Documents\MATLAB\images_test1000\',num2str(i),'_', num2str(j),'.bmp')));
        x=im2double(imread(strcat('D:\Handwritten_Digits_Recognition\images_test1000\',num2str(i),'_', num2str(j),'.bmp')));
        x=reshape(x,784,1);         % ��28*28����ֵ�����Ϊ784*1,ÿ�д���һ��ͼ
        x_test = [x_test,x];        % ÿѭ��һ�μ���һ������
    end
end

% ��ȡ��ǩ�ļ���ע�⣺���ڱ�ǩ�Ĵ洢���⣬�������Ҫ����ת��
data=xlsread('label1.xls');
data2=xlsread('label2.xls');
y_train=data';
y_test = data2';

% ���صĲ���
x_train;
y_train;
x_test;
y_test;

end



