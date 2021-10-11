function [PR, ind] = create_PR (R, val1, val2)
  PR = R;
  n = length(R);
  ind = zeros(1, n);
  for i = 1 : n
    ind(i) = i;
  endfor
  %sorteaza vectorul: cand interschimba doua elemente, interschimba si pozitiile lor din ind
  for i = 1:n
    for j = (i+1):n
      if PR(i) < PR(j)
        aux = PR(i);
        PR(i) = PR(j);
        PR(j) = aux;
        aux2 = ind(i);
        ind(i) = ind(j);
        ind(j) = aux2;
      endif
    endfor
  endfor
  %fiecare element din PR se transforma in valoarea returnata de functia Apartenenta
  for i =1:n
    PR(i) = Apartenenta(PR(i), val1, val2);
  endfor  
endfunction
