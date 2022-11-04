function code_res = increEnCode(source,increment)
%increEnCode 对输入的音频信号进行增量调制编码
%   source:需要编码的音频数组信号
%   increment:增量参数
%   res:编码后的二进制结果

%计算音频体积
source_size = length(source);
%△M编码开始状态
state_encode = 0;
%编码结果数组
code_res = int8(zeros(1,source_size));
%开始编码
for i = 1:source_size
    if source(i) > state_encode
        code_res(i) = 1;
        state_encode = state_encode + increment;
    else
        code_res(i) = 0;
        state_encode = state_encode - increment;
    end
end
end
