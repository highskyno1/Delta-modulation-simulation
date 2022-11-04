function decode_res = increDeCode(code_res,increment)
%increDeCode 增量调制解调函数
%   source:需要编码的音频数组信号
%   increment:增量参数
%   res:解码后的音频信号

%计算音频体积
source_size = length(code_res);
%解码器初始状态
state_decode = 0;
%初始化解码结果
decode_res = zeros(1,source_size);
%开始解码
for i = 1:source_size
    if code_res(i) == 1
        decode_res(i) = state_decode + increment;
    else
        decode_res(i) = state_decode - increment;
    end
    state_decode = decode_res(i);
end
end

