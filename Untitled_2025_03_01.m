% 代码主函数
% 1.读入图片和标签数据
% 2.将数据归一化到0-1之间
%{
[x_train,y_train,x_test,y_test]=getdata();

% 矩阵归一化
x_train = mapminmax(x_train,0,1);
x_test =mapminmax(x_test,0,1);
%}

%%%%%%%%%%%%%
%{

[y,PS] = mapminmax(x,ymin,ymax);
y = (ymax-ymin)*(x-xmin)/(xmax-xmin) + ymin;

x=(y-ymin)*(xmax-xmin)/(ymax-ymin)+xmin;
%%%%%%%%%%%%%%%%https://blog.csdn.net/jk_101/article/details/133959428

%}

%{
% 训练数据
%[w1,b1,w_h1,b_h1]=mytrain(x_train,y_train);

% 测试数据准确性
%fprintf('mytrain正确率_gdy:\n');
%mytest(x_test,y_test,w1,b1,w_h1,b_h1);

% 以下代码暂时注释，随后测试其正确性
 [w2,b2,w_h2,b_h2]=mytrain(x_train,y_train);
 fprintf('mytrain_mini正确率:\n');
 mytest(x_test,y_test,w2,b2,w_h2,b_h2);

%}
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[x_train,y_train,x_test,y_test]=getdata();
gdy=size(x_train)

% 矩阵归一化
[x_train_gdy ps_train] = mapminmax(x_train,0,1);
[x_test_gdy  ps_test] = mapminmax(x_test,0,1);


gg=x_train(:,3839);
g=reshape(gg,28, 28);
p=90
figure(p); 
subplot(2, 2, 1);
k=399
m=num2str(3*k);
imshow(g)
title(2*k,  'position', [0,-2])
hold on
text(17,-3,m, 'Color','green','FontSize',14);% 前面两个位置坐标

gdy_train=mapminmax(x_train_gdy, ps_train);
gdy_test=mapminmax(x_test_gdy, ps_test);
dd=gdy_train(:,3839);
d=reshape(dd,28, 28);

figure(p); 
subplot(2, 2, 4);
imshow(d)
j=109
title(j, 'position', [0,-2])



%{
 ?要在文本中包含数值变量，可以使用 num2str 函数。

v = 42;
txt = ['The value is ',num2str(v)];


%}