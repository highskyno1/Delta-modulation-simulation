function decode_res = increDeCode(code_res,increment)
%increDeCode �������ƽ������
%   source:��Ҫ�������Ƶ�����ź�
%   increment:��������
%   res:��������Ƶ�ź�

%������Ƶ���
source_size = length(code_res);
%��������ʼ״̬
state_decode = 0;
%��ʼ��������
decode_res = zeros(1,source_size);
%��ʼ����
for i = 1:source_size
    if code_res(i) == 1
        decode_res(i) = state_decode + increment;
    else
        decode_res(i) = state_decode - increment;
    end
    state_decode = decode_res(i);
end
end

