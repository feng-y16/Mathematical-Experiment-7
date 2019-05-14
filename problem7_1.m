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
y_norm=zeros(1,201);
for i=1:1:201
    y_norm(i)=normcdf(x(i),200*0.5,sqrt(200*0.5^2));
end
h=jbtest(result_positive);
emp_plot(result_positive,11,0.35,x,[y;y_norm])
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
for i=1:1:201
    y_norm(i)=normcdf(x(i),200*0.5,sqrt(200*0.5^2));
end
h=jbtest(result_positive);
emp_plot(result_positive,12,0.35,x,[y;y_norm])
%%
clear
times=20;
result_max=zeros(1,times);
for i=1:1:times
    r=randi([0,1],1,200);
    result_max(i)=max_string(r);
end
emp_plot(result_max,13,0.15)
%%
clear
times=200;
result_max=zeros(1,times);
for i=1:1:times
    r=randi([0,1],1,200);
    result_max(i)=max_string(r);
end
h =jbtest(result_max);
emp_plot(result_max,14,0.15)
hist(result_max)
title('Ö±·½Í¼')
set(gca,'FontSize',28)
set(gcf,'Position',get(0,'ScreenSize'))
saveas(gcf,'hist.png')
close
%%
clear
times=20;
result_5=zeros(1,times);
result_6=zeros(1,times);
result_7=zeros(1,times);
for i=1:1:times
    r = randi([0,1],1,200);
    for j=1:1:196
        if all(r(j:1:j+4)==0)||all(r(j:1:j+4)==1)
            result_5(i)=result_5(i)+1;
            if j+5<=200&&r(j+5)==r(j)
                result_5(i)=result_5(i)-1;
            end
        end
    end
    for j=1:1:195
        if all(r(j:1:j+5)==0)||all(r(j:1:j+5)==1)
            result_6(i)=result_6(i)+1;
            if j+6<=200&&r(j+6)==r(j)
                result_6(i)=result_6(i)-1;
            end
        end
    end
    for j=1:1:194
        for k=6:1:200-j
            if all(r(j:1:j+k)==0)||all(r(j:1:j+k)==1)
                result_7(i)=result_7(i)+1;
                if j+k+1<=200&&r(j+k+1)==r(j)
                    result_7(i)=result_7(i)-1;
                end
            end

        end
    end
end
emp_plot(result_5,151,0.25)
emp_plot(result_6,152,0.25)
emp_plot(result_7,153,0.25)
%%
clear
times=200;
result_5=zeros(1,times);
result_6=zeros(1,times);
result_7=zeros(1,times);
for i=1:1:times
    r = randi([0,1],1,200);
    for j=1:1:196
        if all(r(j:1:j+4)==0)||all(r(j:1:j+4)==1)
            result_5(i)=result_5(i)+1;
            if j+5<=200&&r(j+5)==r(j)
                result_5(i)=result_5(i)-1;
            end
        end
    end
    for j=1:1:195
        if all(r(j:1:j+5)==0)||all(r(j:1:j+5)==1)
            result_6(i)=result_6(i)+1;
            if j+6<=200&&r(j+6)==r(j)
                result_6(i)=result_6(i)-1;
            end
        end
    end
    for j=1:1:194
        for k=6:1:200-j
            if all(r(j:1:j+k)==0)||all(r(j:1:j+k)==1)
                result_7(i)=result_7(i)+1;
                if j+k+1<=200&&r(j+k+1)==r(j)
                    result_7(i)=result_7(i)-1;
                end
            end

        end
    end
end
h5 =jbtest(result_5);
h6 =jbtest(result_6);
h7 =jbtest(result_7);
emp_plot(result_5,161,0.25)
emp_plot(result_6,162,0.25)
emp_plot(result_7,163,0.25)
%%
clear
times=20;
result_5=zeros(1,times);
result_6=zeros(1,times);
result_7=zeros(1,times);
for i=1:1:times
    r = randi([0,1],1,200);
    for j=1:1:196
        if all(r(j:1:j+4)==0)||all(r(j:1:j+4)==1)
            result_5(i)=result_5(i)+1;
        end
    end
    for j=1:1:195
        if all(r(j:1:j+5)==0)||all(r(j:1:j+5)==1)
            result_6(i)=result_6(i)+1;
        end
    end
    for j=1:1:194
        for k=6:1:200-j
            if all(r(j:1:j+k)==0)||all(r(j:1:j+k)==1)
                result_7(i)=result_7(i)+1;
            end
        end
    end
end
emp_plot(result_5,171,0.25)
emp_plot(result_6,172,0.25)
emp_plot(result_7,173,0.25)
%%
clear
times=200;
result_5=zeros(1,times);
result_6=zeros(1,times);
result_7=zeros(1,times);
for i=1:1:times
    r = randi([0,1],1,200);
    for j=1:1:196
        if all(r(j:1:j+4)==0)||all(r(j:1:j+4)==1)
            result_5(i)=result_5(i)+1;
        end
    end
    for j=1:1:195
        if all(r(j:1:j+5)==0)||all(r(j:1:j+5)==1)
            result_6(i)=result_6(i)+1;
        end
    end
    for j=1:1:194
        for k=6:1:200-j
            if all(r(j:1:j+k)==0)||all(r(j:1:j+k)==1)
                result_7(i)=result_7(i)+1;
            end
        end
    end
end
h5 =jbtest(result_5);
h6 =jbtest(result_6);
h7 =jbtest(result_7);
emp_plot(result_5,181,0.25)
emp_plot(result_6,182,0.25)
emp_plot(result_7,183,0.25)