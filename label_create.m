% ����Excel�洢label
% ����ͼƬ������,���磺3_101.bmp����һ����ֵ�Ǳ�ǩ���ڶ�����ͼƬ����
% Ϊ��ת����������ı�ǩ��0-9��10����ǩӦת��Ϊ[1,0,0,0,0,0,0,0,0,0],[0,1,0,0,0,0,0,0,0,0]
% �����ĸ�ʽ�����ڼ�λ��1�ʹ����ǩ�Ǽ�����[0,1,0,0,0,0,0,0,0,0]����2
% �������ǵ�ǰ 400��ͼ����0�����Ա�ǩ����[1,0,0,0,0,0,0,0,0,0]
% ��Ϊÿ���汾��Excel����洢�����в�ͬ��������2003��洢����4000�У�����Ҫ��label����ת�ú���ܴ���
% Excel2003�ɴ洢��65536*256
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