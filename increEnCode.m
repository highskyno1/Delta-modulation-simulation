function code_res = increEnCode(source,increment)
%increEnCode ���������Ƶ�źŽ����������Ʊ���
%   source:��Ҫ�������Ƶ�����ź�
%   increment:��������
%   res:�����Ķ����ƽ��

%������Ƶ���
source_size = length(source);
%��M���뿪ʼ״̬
state_encode = 0;
%����������
code_res = int8(zeros(1,source_size));
%��ʼ����
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
