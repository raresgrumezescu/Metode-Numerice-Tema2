function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare 
  [n m] = size(A);
  B = zeros(n,m);
  [Q R] = GS(A);
  for i = 1:m
    x = zeros(n,1);
    e = zeros(n,1);
    e(i) = 1;
    x = SST(R,Q'*e);
    for j = 1:n
      B(j,i) = x(j);
    endfor
  endfor  
endfunction