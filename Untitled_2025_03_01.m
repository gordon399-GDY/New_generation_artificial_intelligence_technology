% ����������
% 1.����ͼƬ�ͱ�ǩ����
% 2.�����ݹ�һ����0-1֮��
%{
[x_train,y_train,x_test,y_test]=getdata();

% �����һ��
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
% ѵ������
%[w1,b1,w_h1,b_h1]=mytrain(x_train,y_train);

% ��������׼ȷ��
%fprintf('mytrain��ȷ��_gdy:\n');
%mytest(x_test,y_test,w1,b1,w_h1,b_h1);

% ���´�����ʱע�ͣ�����������ȷ��
 [w2,b2,w_h2,b_h2]=mytrain(x_train,y_train);
 fprintf('mytrain_mini��ȷ��:\n');
 mytest(x_test,y_test,w2,b2,w_h2,b_h2);

%}
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[x_train,y_train,x_test,y_test]=getdata();
gdy=size(x_train)

% �����һ��
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
text(17,-3,m, 'Color','green','FontSize',14);% ǰ������λ������

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
 ?Ҫ���ı��а�����ֵ����������ʹ�� num2str ������

v = 42;
txt = ['The value is ',num2str(v)];


%}