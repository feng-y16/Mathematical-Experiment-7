function [  ] = emp_plot(data,filename,option_offset,x,y,varargin)
hold on;
data_num=length(data);
data=sort(data);
offset=option_offset*max(abs(data))/100;
k=0;
for i=1:1:data_num-1
    y_emp=i*1.0/data_num;
    if data(i)~=data(i+1)
        scatter(data(i)-offset,y_emp,20,'MarkerEdgeColor',[0 114 189]/255.0,'LineWidth',1.5)
        line([data(i),data(i+1)],[y_emp,y_emp],'LineWidth',5);
        k=k+1;
    end
end
scatter(data(data_num)-offset,1,20,'MarkerEdgeColor',[0 114 189]/255.0,'LineWidth',1.5)
line([data(data_num),data(data_num)+1.3*(data(data_num)-data(1))/k],[1,1],'LineWidth',5);
if nargin>3
    s=size(y);
    if s(1)==1
        plot(x,y,'r--','LineWidth',3);
        title('经验分布函数 & 分布函数')
    else
        plot(x,y(2,:),'g--','LineWidth',3);
        plot(x,y(1,:),'r--','LineWidth',3);
        title('经验分布函数 & 近似分布函数 & 分布函数')
    end
else
    title('经验分布函数')
end
set(gca,'FontSize',28)
xlabel('x')
ylabel('F(x)')
set(gcf,'Position',get(0,'ScreenSize'))
saveas(gcf,[num2str(filename) '.png'])
close
end