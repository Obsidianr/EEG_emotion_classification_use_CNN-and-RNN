function [segment] = signal_divide(signal,Fs,t1,t2)
% (����)
% signalԭʼ�ź�
% Fs�ǲ���Ƶ��
% t1��ʾѡȡ����Ƭ��ʱ�䳤��
% t2��ʾ����Ƭ��ѡȡ���

j = 0;
for i = 1:fix(((length(signal)/Fs-t1)/t2)+1) %(length(s)/Fs)Ϊ�������ݵ�ʱ�䳤�ȣ��ڳ���t2��Ϊ������������������
    segment(i,:) = signal(round(j*Fs+1):round((t1+j)*Fs));%235*200��ÿ��Ϊһ������
    j = t2*i;
end

end