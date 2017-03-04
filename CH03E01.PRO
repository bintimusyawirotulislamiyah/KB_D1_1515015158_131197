/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  product,sum = integer % disini dideklarasikan bahwa tipe data dari sum dan product adalah integer

predicates
  add_em_up(sum,sum,sum) - procedure (i,i,o) 
  multiply_em(product,product,product) - procedure (i,i,o)

clauses
  add_em_up(X,Y,Sum):- 
	Sum=X+Y. %aturan sum=x+y
  multiply_em(X,Y,Product):-
	Product=X*Y. %aturan product=x*y

goal
  add_em_up(32,54,Sum). %jika di run akan menghasilkan Sum=86 1 Solution
  % kenapa? karena di aturan sudah dideklarasikan bahwa sum = x+y
  % add_em_up(X,Y,Sum) = add_em_up(32,54,Sum)
  % di goal terdapat pernyataan x = 32 , y = 54 dan pertanyaan berupa Sum?
  % jadi hasilnya sum=32+54 = 86
