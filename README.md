# Metode-Numerice-Tema2
Algoritmi clasici folositi de catre motoarele de cautare

Programul functioneaza in felul urmator:

In functia PageRank sunt apelate functiile Iterative si Algebraic si cu ajutorul lor se obtin vectorii R1 si R2.
Dupa ce se obtin vectorii, se obtine vectorul PR cu ajutorul functiei create_PR care la randul ei apeleaza functia Apartenanta si prelucreaza vectorul PR.
Se creeaza un fisier cu extensia ".out" si in el se afiseaza numarul de elemente din R1 (care e acelasi cu cel din R2), cei doi vectori si vectorul PR impreuna cu indicii.

Functia Iterative:

Citeste datele din fisierul al carui nume il primeste ca parametru.
Creaza vectorul unitate.
Creeaza matricile K si A; cu ele se obtine si M;
Se initializeaza un R0.
Cu A, K, M, R0, vectorul unitate si d se obtine R conform algoritului din cerinta 1.

Functia Algebraic:

Citeste datele din fisierul al carui nume il primeste ca parametru.
Creaza vectorul unitate.
Creeaza matricile K si A; cu ele se obtine si M;
Cu A, K, M, R0, vectorul unitate si d se obtine R conform formulei din linkul oferit la cerinta2.

Cele doua functii trebuie sa calculeze invaresa lui K; acest lucru se realizeaza cu functia PR_Inv, care foloseste functiile GS si SST pentru a calcula inversa matricii primite ca parametru

GS: aceasta functie relizeaza factorizarea QR a matricii primite ca parametru
SST: functie ce rezolva un sistem superior triunghiular
