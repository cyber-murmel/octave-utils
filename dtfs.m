function sig = dtfs(spectrum)
  sig_len = length(spectrum);
  ts = [0 : sig_len-1]/sig_len;
  sig = zeros(1, sig_len);
  for k = 0:sig_len-1
    sig = sig .+ spectrum(k+1)*e.^(i*2*pi*ts*k)/sig_len;
  end
end
