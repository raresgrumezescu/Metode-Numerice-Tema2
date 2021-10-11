function [R1 R2] = PageRank(nume, d, eps)
  f = fopen(nume, "r+");
  %calculeaza R1 cu Iterative
  R1 = Iterative(nume, d, eps);
  %calculeaza R2 cu Algebraic
  R2 = Algebraic(nume, d);
  linie = fgets(f);
  %citind continutul fisierului, se muta cursorul in dreptul ultimelor 2 valori
  k = str2num(linie);
  x = k;
  while k~=0
    linie = fgets(f);
    k--;
  endwhile
  linie = fgets(f);
  %se citeste valoarea1
  val1 = str2num(linie);
  linie = fgets(f);
  %se citeste valoarea1
  val2 = str2num(linie);
  %crearea unui string cu numele cerut
  nume_out = strcat(nume, ".out");
  %se deschide fisierul ".out"
  fout = fopen(nume_out, "w+");
  %se creeaza vectorii PR si ind
  %in PR sunt tinute minte valorile lui R2 converite cu functia Apartenenta
  %in ind se tin minte indicii din PR modificati in timpul sortarii in ordine descrescatoare
  [PR , ind] = create_PR(R2, val1, val2);
  % se afiseaza x = numarul de elemente al lui R1 si R2
  fprintf(fout, "%d\n\n", x);
  %afisarea vectorului R1
  for i = 1 : length(R1)
    fprintf(fout, "%f\n", R1(i));
    %printf("%f\n", R1(i));
  endfor
  fprintf(fout, "\n");
  %afisarea vectorului R2
  for i = 1 : length(R2)
    fprintf(fout, "%f\n", R2(i));
    %printf("%f\n", R2(i));
  endfor
  fprintf(fout, "\n");
  %afisarea vectorului PR conform cerintei
  for i = 1 : length(PR)
    fprintf(fout, "%d %d %f\n", i, ind(i), PR(i));
  endfor
  fclose(fout);
  fclose(f);
endfunction
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out 