function [a_noisy,b_noisy,c_noisy] = snr_add(sound1,sound2,sound3,snr)


volvo = audioread('noise_data\volvo.wav');
white = audioread('noise_data\white.wav');
machinegun = audioread('noise_data\machinegun.wav');

snr_db = input('Please enter a SNR value : ');

a_noisy= awgn(sound1,snr);
b_noisy= awgn(sound2,snr);
c_noisy= awgn(sound3,snr);

end

