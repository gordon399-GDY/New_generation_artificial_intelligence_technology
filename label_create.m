% 创建Excel存储label
% 根据图片的名字,例如：3_101.bmp，第一个数值是标签，第二个是图片数。
% 为了转换成神经网络的标签，0-9这10个标签应转换为[1,0,0,0,0,0,0,0,0,0],[0,1,0,0,0,0,0,0,0,0]
% 这样的格式，即第几位是1就代表标签是几？如[0,1,0,0,0,0,0,0,0,0]代表2
% 例如我们的前 400个图都是0，所以标签都是[1,0,0,0,0,0,0,0,0,0]
% 因为每个版本的Excel允许存储的行列不同，这里是2003版存储不下4000列，故需要将label矩阵转置后才能存下
% Excel2003可存储：65536*256
clear all;
clc;
label=zeros(10,4000);
label2=zeros(10,1000);

eye_sam=eye(10);
for j=1:10
    label1(:,(400*(j-1)+1):400*j)= repmat( eye_sam(:,j),1,400 );
end
T=label1';
xlswrite('D:\Handwritten_Digits_Recognition\label1.xls',T);

for j=1:10
    label2(:,(100*(j-1)+1):100*j)= repmat( eye_sam(:,j),1,100 );
end
T2=label2';
xlswrite('D:\Handwritten_Digits_Recognition\label2.xls',T2);