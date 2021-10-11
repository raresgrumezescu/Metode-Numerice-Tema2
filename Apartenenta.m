function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1 
  if 0 <= x && x < val1
    y = 0;
  endif
  if val1 <= x && x <= val2
    a = 1/(val2-val1);
    b = -val1/(val2-val1);
    y = a*x+b;
  endif
  if val2 < x && x <= 1
    y = 1;
  endif
endfunction
	