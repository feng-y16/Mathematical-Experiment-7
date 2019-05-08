%%
clear
times=20;
result_positive=zeros(1,times);
x=zeros(1,201);
y=zeros(1,201);
for i=1:1:times
    r = randi([0,1],1,200);
    result_positive(i)=sum(r);
end
y(1)=2^(-200);
for i=1:1:200
    x(i+1)=i;
    y(i+1)=y(i)+nchoosek(200,i)*2^(-200);
end
emp_plot(result_positive,11,0.35,x,y)
%%
clear
times=200;
result_positive=zeros(1,times);
x=zeros(1,201);
y=zeros(1,201);
for i=1:1:times
    r = randi([0,1],1,200);
    result_positive(i)=sum(r);
end
y(1)=2^(-200);
for i=1:1:200
    x(i+1)=i;
    y(i+1)=y(i)+nchoosek(200,i)*2^(-200);
end
emp_plot(result_positive,12,0.35,x,y)
%%
clear
times=20;
result_maxruns=zeros(1,times);
for i=1:1:times
    r = num2str(randi([0,1],1,200));
    result_maxruns(i)=max(max(cellfun('length',strsplit(r,'0'))),max(cellfun('length',strsplit(r,'1'))));
end
emp_plot(result_maxruns,13,0.15)
%%
clear
times=200;
result_maxruns=zeros(1,times);
for i=1:1:times
    r = num2str(randi([0,1],1,200));
    result_maxruns(i)=max(max(cellfun('length',strsplit(r,'0'))),max(cellfun('length',strsplit(r,'1'))));
end
emp_plot(result_maxruns,14,0.15)
hist(result_maxruns)
title('Ö±·½Í¼')
set(gca,'FontSize',28)
set(gcf,'Position',get(0,'ScreenSize'))
saveas(gcf,'hist.png')
close
%%
clear
times=20;
result_5runs=zeros(1,times);
result_6runs=zeros(1,times);
result_7runs=zeros(1,times);
for i=1:1:times
    r = randi([0,1],1,200);
    for j=1:1:196
        if all(r(j:1:j+4)==0)||all(r(j:1:j+4)==1)
            result_5runs(i)=result_5runs(i)+1;
        end
    end
    for j=1:1:195
        if all(r(j:1:j+5)==0)||all(r(j:1:j+5)==1)
            result_6runs(i)=result_6runs(i)+1;
        end
    end
    for j=1:1:194
        for k=6:1:200-j
            if all(r(j:1:j+k)==0)||all(r(j:1:j+k)==1)
                result_7runs(i)=result_7runs(i)+1;
            end
        end
    end
end
emp_plot(result_5runs,151,0.25)
emp_plot(result_6runs,152,0.25)
emp_plot(result_7runs,153,0.25)
%%
clear
times=200;
result_5runs=zeros(1,times);
result_6runs=zeros(1,times);
result_7runs=zeros(1,times);
for i=1:1:times
    r = randi([0,1],1,200);
    for j=1:1:196
        if all(r(j:1:j+4)==0)||all(r(j:1:j+4)==1)
            result_5runs(i)=result_5runs(i)+1;
        end
    end
    for j=1:1:195
        if all(r(j:1:j+5)==0)||all(r(j:1:j+5)==1)
            result_6runs(i)=result_6runs(i)+1;
        end
    end
    for j=1:1:194
        for k=6:1:200-j
            if all(r(j:1:j+k)==0)||all(r(j:1:j+k)==1)
                result_7runs(i)=result_7runs(i)+1;
            end
        end
    end
end
emp_plot(result_5runs,161,0.25)
emp_plot(result_6runs,162,0.25)
emp_plot(result_7runs,163,0.25)