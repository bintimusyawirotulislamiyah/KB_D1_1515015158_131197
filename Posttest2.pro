domains  
a,c=symbol
b,d,e,f=ulong

predicates
nondeterm minum (a,b,c)
nondeterm bayar(d,e,f)

clauses

minum("Jamu",100,jamu):-
	write("Saya Merasa Pahit"),nl,
	write("Karena"),nl,
	readchar(_).
	
minum("Susu",50,susu):-
	write("Saya Merasa Manis"),nl,
	write("Karena"),nl,
	readchar(_).
	
minum("Air Putih",1000,air):-	
	write("Saya Kembung"),nl,
	write("Karena"),nl,
	readchar(_).
	
bayar(Jumlah,Harga,Total_Bayar):-
	Total_Bayar=Jumlah*Harga.
	
	
goal
minum(Saya_Minum,Gelas,air),
bayar(1000,4000,Bayar).
