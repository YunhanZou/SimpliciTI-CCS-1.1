clear all;
clc;
acceloDataTEST0 = importdata('acceloDataTEST0.data');
data = acceloDataTEST0(:,17:end);
x = [];
z = [];

for i=1:length(data(:,1))
    for j=1:4:length(data(i,:))
        x = [x,data(i,j)+256*data(i,j+1)];
        z = [z,data(i,j+2)+256*data(i,j+3)];
    end
end

subplot(2,1,1);plot(x);
subplot(2,1,2);plot(z);
