function R = Algebraic(nume, d)
	
  f = fopen (nume, 'r+');
  linie = fgets(f);
  %citeste numarul de pagini
  k = str2num(linie);
  x = k;
  A = zeros(k,k);
  K = zeros(k,k);
  %creeaza vectorul unitate
  vect_1 = zeros(k,1);
  for i=1:k
    vect_1(i) = 1;
  endfor
  n = 1;
  %in while se citesc urmatoarele k linii si se creeaza matricea da adiacenta A, si matricea K
  while k~=0
    linie = fgets(f);
    %disp(linie(2));
    vect = str2num(linie);
    lung = length(vect);
    out = vect(2);
    for i=3:lung
      A(vect(1), vect(i)) = 1;
      if vect(i) == vect(1)
        out--;
      endif
    endfor
    K(n,n) = out;
    n++;
    k--;
  endwhile
  %se pune pe diagonala lui A 0
  for i = 1:x
    A(i,i) = 0;
  endfor
  % K egal cu inversa sa
  K = PR_Inv(K);
  M = (K*A)'; 
  R0 = zeros(x,1);
  %se aplica algoritmul din cerinta
  I = eye(x);
  R0 = (I-d*M);
  R0 = inv(R0);
  R = R0*((1-d)/x)*vect_1;
endfunction