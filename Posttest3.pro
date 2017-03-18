domains
  nama_ig,owner= symbol
  jumlah = unsigned % membatasi angka hanya 0 - 9 , minus (-) tidak bisa

predicates
  nondeterm name(nama_ig)
  nondeterm ig(owner,nama_ig)
  nondeterm followers(nama_ig,jumlah)
  nondeterm selebgram(owner,nama_ig)
  nondeterm likers(nama_ig,jumlah)
  nondeterm bukan_selebgram(owner,nama_ig)
  nondeterm akun(owner,nama_ig)

clauses
  
  name("Adammahendraps").
  name("Lehaa10").
  name("Hullizan").
  name("Jack").
  name("Syukron").

  ig(adam,"Adammahendraps").
  ig(navila,"Lehaa10").
  ig(faseh,"Hullizan").
  ig(rozak,"Jack").
  ig(syukron,"Syukron").
  
  followers("Adammahendraps",8900).
  followers("Lehaa10",9001).
  followers("Hullizan",9001).
  followers("Jack",9001).
  followers("Syukron",7500).
  
  likers("Adammahendraps",1000).
  likers("Lehaa10",1000).
  likers("Hullizan",1001).
  likers("Jack",1000).
  likers("Syukron",1001).
  
  akun(adam,Nama_ig):-
  	name(Nama_ig),
  	followers(Nama_ig,8900).

  selebgram(Owner,Nama_ig):-
        write("*****************SELEBGRAM****************"),nl,
	ig(Owner,Nama_ig),
	followers(Nama_ig,Jumlah),
	Jumlah > 9000.
  
  bukan_selebgram(Owner,Nama_ig):-
  	write("*****************SELEBGRAM ABAL ABAL****************"),nl,
	ig(Owner,Nama_ig),
	followers(Nama_ig,Jumlah),
	Jumlah < 9000.

  
	

goal
  akun(Admin,"Adammahendraps");nl,
  selebgram(Owner,Nama_ig1);nl,
  bukan_selebgram(Owner,Nama_ig2);nl,
  likers(IGa,1000),
  likers(IGb,1001),
  IGa <> IGb.