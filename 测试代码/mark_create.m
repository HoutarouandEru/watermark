clear;clc
m=480;
n=480;
I=ones(m,n);
imshow(I);
hold on ;
text(5,215,'20155117������','FontSize',40,'FontWeight','bold');
hold off;
set(gcf,'color','w');
set(gca,'units','pixels','Visible','off');
q=get(gca,'position');
q(1)=0;%������߾���ֵΪ��
q(2)=0;%�����ұ߾���ֵΪ��
set(gca,'position',q);
frame=getframe(gcf,[1,1,n,m]);
im=frame2im(frame);
Ibw=im2bw(im,graythresh(im));
figure,imshow(Ibw);
imwrite(Ibw,'message.bmp','bmp');