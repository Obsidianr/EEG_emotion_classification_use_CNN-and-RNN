function [sample1,sample2] = feature_extract(signal,Fs,t1,t2)
% signalΪһ���ź����У��Ǿ���
% Fs�ǲ���Ƶ��(200Hz)
% t1��ʾѡȡ����Ƭ��ʱ�䳤��(1s)
% t2��ʾ����Ƭ��ѡȡ���(1s)

%% �ź�ȡ��
% ������ÿ��Ϊһ������
segment = signal_divide(signal,Fs,t1,t2);

%% С�����ֽ�
% 6���ֽ�
n = 4;
N = 2^n;
wp_name = 'db4';

for i = 1:length(segment(:,1))
    wpt = wpdec(segment(i,:),n,wp_name);
    
    for j = 1:N
    % ����1
        sample1(i,j) = norm(wpcoef(wpt,[n,j-1]),2);
    % ����2
        sample2(i,j) = sample1(i,j).^2;
    end
    % ��������Ϊ��������Ϊ����(235*32)
    
end

end
