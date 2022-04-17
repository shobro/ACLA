%Read an Image
Img = imread('lenna-256x256.tif');
A = imnoise(Img,'Gaussian',0.04,0.003);

%Image with noise
figure,imshow(A);title("before");

imwrite(A,"kharabacep.bmp");
I = double(A);

Kernel =[137982,  231865,  275659,  231865,  137982;
         231865,  389626,  463217,  389626,  231865;
         275659,  463217,  550709,  463217,  275659;
         231865,  389626,  463217,  389626,  231865;
         137982,  231865,  275659,  231865,  137982];

%Initialize
Output=zeros(size(I));

%Pad the vector with zeros
I = padarray(I,[2 2]);

%Convolution
for i = 1:size(I,1)-4
    for j =1:size(I,2)-4
        temp = I(i:i+4,j:j+4).*Kernel;
        Output(i,j)=(mockadder(32,8,temp(25),mockadder(32,8,temp(24),mockadder(32,8,temp(23),mockadder(32,8,temp(22),mockadder(32,8,temp(21),
        mockadder(32,8,temp(20),mockadder(32,8,temp(19),mockadder(32,8,temp(18),mockadder(32,8,temp(17),mockadder(32,8,temp(16),
        mockadder(32,8,temp(15),mockadder(32,8,temp(14),mockadder(32,8,temp(13),mockadder(32,8,temp(12),mockadder(32,8,temp(11),
        mockadder(32,8,temp(10),mockadder(32,8,temp(9),mockadder(32,8,temp(8),mockadder(32,8,temp(7),mockadder(32,8,temp(6),
        mockadder(32,8,temp(5),mockadder(32,8,temp(4),mockadder(32,8,temp(3),mockadder(32,8,temp(2),temp(1))))))))))))))))))))))))))/10000000;
    end
    disp(i);
end
%Image without Noise after Gaussian blur
Output = uint8(Output);

imwrite(Output,"approxadder.bmp");
figure,imshow(Output);title("after");
psnr(Output,A)
