function source = errorCode(source,errorRate)
%errorCode 人为地给信号加入误码
%   source:原信号
%   errorRate:误码率
%   res:加入误码结果

%计算音频体积
source_size = length(source);
%加入随机误码
for i = 1:source_size
    if rand() <= errorRate
        source(i) = ~source(i);
    end
end

end

