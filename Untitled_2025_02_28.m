%clear all

function[]= Untitled_2025_02_28(w,b,w_h,b_h)

x_test =[];
for i=0:9
    for j=401:500
        %%%%%%%%%%%%x=im2double(imread(strcat('D:\Documents\MATLAB\images_test1000\',num2str(i),'_', num2str(j),'.bmp')));
        x=im2double(imread(strcat('D:\Handwritten_Digits_Recognition\images_test1000\',num2str(i),'_', num2str(j),'.bmp')));
        x=reshape(x,784,1);         % ��28*28����ֵ�����Ϊ784*1,ÿ�д���һ��ͼ
        x_test = [x_test,x];        % ÿѭ��һ�μ���һ������
    end
    gdy=x_test;
end
% ��ȡ��ǩ�ļ���ע�⣺���ڱ�ǩ�Ĵ洢���⣬�������Ҫ����ת��
x_test =mapminmax(x_test,0,1);      %����û�в��ܴ�
data2=xlsread('label2.xls');

y_test = data2';
y_test1=y_test;     %[row    col]=size(y_test);     roe=10,  col=1000
j=0;
test = zeros(10,3);
m=[ ];
n=[  ];
for k=1:9
    j=j+1;
    m(j)=int64(1000*rand())
    x(:,j) = x_test(:,m(j));
    y_test3(:,j)=y_test1(:,m(j));

    hid = layerout(w_h,b_h,x(:,j));
    test(:,j)=layerout(w,b,hid);
end

    %��ȷ�ʱ�ʾ��ʽһ�������ȷ����
    [t,t_index]=max(test)
    [y,y_index]=max(y_test3)
    n=t_index;
    sum = 0;
    for p=1:length(t_index)
        if t_index(p)==y_index(p)
            sum =sum+1;
        end
    end


fprintf('��ȷ��: %d/9\n',sum);

%��ȷ�ʱ�ʾ��ʽ������plotconfusion����     
for k=1:9
    
    fprintf('k= %d, y_index=%d \n' , k, y_index(k));
    
    gdy1=gdy(:,m(k));
    gdy2=reshape(gdy1, 28,28);
    figure(19700414)       %%%�뱸ע�Լ���ѧ�ţ�����Times New Roman�ĸ�ʽ
    subplot(3, 3, k);
    imshow(gdy2);
   title( m(k), 'position', [-1,-3]);
     %title( '��Ԫ_43052319700414', 'position', [-1,-3]);
    jiance_zhi=num2str(n(k)-1);
    
    text(9,-6,'������֣�', 'Color','black','FontSize',9);% ǰ������λ������
    text(27,-6,jiance_zhi, 'Color','yellow','FontSize',19);% ǰ������λ������
    
    
end
    
end
