clc;clear;close all;
%Giriş resminin görüntüsü
a = imread('balon.jpg');
subplot(121);
imshow(a);
title('Orjinal Görüntü');

% Giriş resminin boyutlarını al
[genislik, yukseklik, ~] = size(a);

% Yeni bir çıktı görüntüsü oluştur
cikti_resmi = uint8(zeros(genislik, yukseklik, 3));

% Her piksel için döngü
for i = 1:genislik
    for j = 1:yukseklik
        % Rastgele renk oluştur
        r = randi([0 255]);
        g = randi([0 255]);
        b = randi([0 255]);
        
        % Yeni pikseli ata
        cikti_resmi(i, j, 1) = r;
        cikti_resmi(i, j, 2) = g;
        cikti_resmi(i, j, 3) = b;
    end
end

% Çıktı görüntüsünü göster
subplot(1,2,2);
imshow(cikti_resmi);
title('Yeni Görüntü');

% Çıktı görüntüsünü kaydet
imwrite(cikti_resmi, 'cikti_resmi.jpg');
subplot(1,2,2);
imshow(cikti_resmi);
title('Yeni Görüntü');
