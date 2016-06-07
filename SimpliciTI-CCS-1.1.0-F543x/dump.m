try
clear all
s = serial('COM2','BaudRate',115200);
fopen(s);
out=zeros(1,12);
fdataX = fopen('acceloDataTEST0.data', 'wt');
while(1)
d = s.BytesAvailable;
if(d>0)
out=fread(s,80,'uint8');
fprintf(fdataX,'%d\t',out');
fprintf(fdataX,'\r\n');
end
end
stopasync(s);
fclose(s);
delete(s);
catch ME
ME
fprintf('Exit \n');
fclose(s);
delete(s);
end