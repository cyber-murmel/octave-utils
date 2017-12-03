function spectrum = dtft(sig)
  sig_len = length(sig);
  ts = [0 : sig_len-1]/sig_len; % unit time
  spectrum = zeros(1, sig_len);
  for k = 0:sig_len-1
    spectrum(k+1) = sum(sig.* e.^(-i*2*pi*ts*k));
  end
end
