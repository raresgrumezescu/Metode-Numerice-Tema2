function R = Iterative2(nume, d, eps)
  %deschidem fisierul
  file = fopen (nume, 'r+');

  %citim numarul de nodurii
  N = fscanf (file, '%f', 1);

  %initializam matricea de adiacenta cu zerourii
  A = zeros (N);

  %citim muchiile
  for i = 1:N
    %citim numarul liniei(nodului)
    lin = fscanf (file, '%f', 1);

    %citim numarul de muchii al nodului
    nr = fscanf (file, '%f', 1);

    %citim toate muchiile nodului
    muchii = fscanf (file, "%d", nr);

    %punem muchiile in matricea de adiacente pe lina corespunzatoare
    A(i, muchii) = 1;    
  end

    %aici am un for care calculeaza mia multe:
  for i = 1:N
    %calculam inversa matricei K
    inv_K(i, i) = 1 / sum (A(i, :));

    %R0 solutia initiala
	  R0(i, 1) = 1 / N;

    %vector de 1;
	  C1(i) = 1;
  endfor

  %calculam M cu formula
  M = (inv_K * A)';
  disp(A);
  disp("\n");
  disp(M);
  disp("\n");
  disp(inv_K);
  %calculam o noua solutie
  R = d * M * R0 + ((1 - d) / N) * C1;

  %conditia de oprire
  while norm (R - R0) >= eps
    R0 = R;

    %calculam solutii
    R = d * M * R0 + (( 1 - d ) / N) * C1;
  endwhile

  %scoatem vectorul final
  R = R0(:,1);
  fclose (file);
endfunction