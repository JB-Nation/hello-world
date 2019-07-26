function [n, g1, g2 m1, m2, x1, x2] = gage_guage(rawdata)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
rawexp=importdata(rawdata);
mn=size(rawexp);
n=mn(2);
gage_total = sum(rawexp(6803:6815,:));
g1=0;
g2=0;
for i=1:n
    if gage_total(i) >= 10 && gage_total(i) <= 100
        g1=g1+1;
    end
    if gage_total(i) > 100
        g2=g2+1;
    end
end
mage_total = sum(rawexp(10481:10491,:))
m1=0;
m2=0;
for i=1:n
    if mage_total(i) >= 50 && mage_total(i) <= 500
        m1=m1+1;
    end
    if mage_total(i) > 500
        m2=m2+1;
    end
end
xage_total = rawexp(19649,:);
x1=0;
x2=0;
for i=1:n
    if xage_total(i) >= 10 && xage_total(i) <= 100
        x1=x1+1;
    end
    if xage_total(i) > 100
        x2=x2+1;
    end
end

