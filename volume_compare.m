function [volume,time] = volume_compare(nlist)
volume=zeros(1,length(nlist));
time=zeros(1,length(nlist));
for i=1:1:length(nlist)
    tic
    n=nlist(i);
    x_low=-1;
    x_high=1;
    y_low=-1;
    y_high=1;
    z_low=0;
    z_high=2;
    x=unifrnd(x_low,x_high,1,n);  
    y=unifrnd(y_low,y_high,1,n);
    z=unifrnd(z_low,z_high,1,n);
    f=1;
    u=(x.^2+y.^2<1)&(z>sqrt(x.^2+y.^2))&(z<1+sqrt(1-x.^2-y.^2));
    volume(i)=(x_high-x_low)*(y_high-y_low)*(z_high-z_low)*sum(f.*u)/n;
    time(i)=toc;
end
end

