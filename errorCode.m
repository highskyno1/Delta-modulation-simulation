function source = errorCode(source,errorRate)
%errorCode ��Ϊ�ظ��źż�������
%   source:ԭ�ź�
%   errorRate:������
%   res:����������

%������Ƶ���
source_size = length(source);
%�����������
for i = 1:source_size
    if rand() <= errorRate
        source(i) = ~source(i);
    end
end

end

