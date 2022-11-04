clear sound
%�����������
increase = 0.03;
%���崫��������
errorRate = 1e-2;

%����Ҫ��������Ƶ
[source,SampleRate] = audioread('./Alisa-All I Want.mp3');
%ת������&�ض�
source = source(1:3e6,2);

%��������
code_res = increEnCode(source,increase);
%��Ϊ�ؼ�������
code_res = errorCode(code_res,errorRate);

%����
decode_res = increDeCode(code_res,increase);
%ƽ������
write = smooth(decode_res,10,'sgolay');
%��һ������
write = mapminmax(write);
write = write./max(abs(write));
%���Ž�����
sound(write,SampleRate);
%�ѽ�����д���ļ�
%audiowrite('./out.mp4',write,SampleRate);