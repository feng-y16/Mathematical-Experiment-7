function [num] = max_string(r)
len=length(r);
num=1;
for i=1:1:len-1
    val=r(i);
    temp_num=1;
    for j=1:1:len-i
        if val~=r(i+j)
            break;
        else
            temp_num=temp_num+1;
        end
    end
    if temp_num>num
        num=temp_num;
    end
end
end