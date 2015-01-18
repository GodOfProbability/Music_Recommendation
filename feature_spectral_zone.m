function Z = feature_spectral_zone(windowFFT, freqs)

L1 = 100;
L2 = 500;

S = sum(windowFFT.^2);
S2 = sum(windowFFT(freqs>L1 & freqs<L2).^2);
Z = S2 / S;