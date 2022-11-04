clear sound
%定义调制增量
increase = 0.03;
%定义传输误码率
errorRate = 1e-2;

%加载要量化的音频
[source,SampleRate] = audioread('./Alisa-All I Want.mp3');
%转单声道&截断
source = source(1:3e6,2);

%增量编码
code_res = increEnCode(source,increase);
%人为地加入误码
code_res = errorCode(code_res,errorRate);

%解码
decode_res = increDeCode(code_res,increase);
%平滑处理
write = smooth(decode_res,10,'sgolay');
%归一化处理
write = mapminmax(write);
write = write./max(abs(write));
%播放解码结果
sound(write,SampleRate);
%把解码结果写入文件
%audiowrite('./out.mp4',write,SampleRate);