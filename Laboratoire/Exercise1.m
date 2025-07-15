
[xc, delai] = xcorr(out.y1, out.y2);
[val_max, idx_max] = max(xc);
delai_max = delai(idx_max);
plot(delai,xc)
disp("Maximum après ajust Canal (cherche 100): "+ delai_max);



%hist(out.out, 100)