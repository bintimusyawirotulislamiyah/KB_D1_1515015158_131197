DOMAINS
integerlist = integer* %inisialisasi integer list

PREDICATES
tambah(integerlist,integerlist,integerlist) %predikat tambah dengan parameter integerlist

CLAUSES
tambah([],List,List). %fakta tambah dengan parameter list kosong, list dan list

tambah([H|L1],List2,[H|L3]):- %aturan tambah dengan parameter head
tambah(L1,List2,L3). %

GOAL
tambah([1,2,3],[5,6],L).