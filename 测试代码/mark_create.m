clear;clc
m=480;
n=480;
I=ones(m,n);
imshow(I);
hold on ;
text(5,215,'20155117王震宇','FontSize',40,'FontWeight','bold');
hold off;
set(gcf,'color','w');
set(gca,'units','pixels','Visible','off');
q=get(gca,'position');
q(1)=0;%设置左边距离值为零
q(2)=0;%设置右边距离值为零
set(gca,'position',q);
frame=getframe(gcf,[1,1,n,m]);
im=frame2im(frame);
Ibw=im2bw(im,graythresh(im));
figure,imshow(Ibw);
imwrite(Ibw,'message.bmp','bmp');