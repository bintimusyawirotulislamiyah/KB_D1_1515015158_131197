DOMAINS
alamat_asal = alamat(symbol,symbol,symbol) %alamat bertipe data symbol,symbol,symbol
mahasiswa,jenis_kelamin,nim = symbol %nama mahasiswa,jenis kelamin,nim bertipe data symbol
matkul,dosen,prodi,ruang = symbol %nama matkul,nama dosen,program studi,ruang bertipe data symbol

PREDICATES
nondeterm mhs(matkul,mahasiswa,jenis_kelamin,nim,alamat_asal) 
/*keyword nondeterm, predikat mahasiswa dengan argumen 
nama_matkul, nama_mahasiswa, jenis_kelamin, nim, alamat_asal dgn jawaban bisa lebih dari satu*/
nondeterm mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan
/* Keywoard nondeterm, predikat mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan
yang mendahului predikat orang berfungsi untuk memberitahu ke compiler Visual Prolog bahwa predikat tersebut mempunyai lebih dari satu kemungkinan jawaban*/ 
cetak_mhs(mahasiswa,dosen,ruang,alamat_asal) %cetak mhs dgn argumen nama_mahasiswa,nama_dosen,ruang,alamat_asal
matkul(matkul,dosen,prodi,ruang) %matkul dgn argumen nama_matkul,nama_dosen,program_studi,ruang 
matkul_yg_diajarkan_pd_smstr_tsb(matkul,mahasiswa,ruang,dosen) %matkul yg di ajarkan pada semester tersebut dgn argumen nama_matkul,nama_mahasiswa,ruang,nama_dosen 

CLAUSES
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:- %aturan bahwa mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan jika
write("\t*************  MAHASIAWA YANG MENGIKUTI MATAKULIAH INTELEGENSI BUATAN  *************"),nl, %write untuk menampilkan dilayar output saja, \t fungsinya sama dengan tombol tab pada keyboard, nl(next line) untuk melanjutkan ke baris selanjutnya fungsinya sama dengan tombol enter pada keyboard
write("*****************************************************************************************************************************"),nl,
write("\n"), %\n fungsinya sama dengan tombol enter pada keyboard
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl, %menampilkannya di layar output,nextline(baris baru)
write("NIM\t\t Nama Mahasiswa\t\t Nama Dosen\tRuang\t\t Alamat\n"), %menampilkan kalimatnya di layar output
mhs("Intelegensi Buatan",_,_,_,_), %mahasiswa yang nama matakuliahnya intelegensi buatan dan
matkul(_,_,_,"1"), % matakuliah yang nomor ruangannya adalah 1 dan
write("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"),nl,
 %menampilkannya di layar output,nextline(baris baru)
cetak_mhs(mahasiswa,dosen,ruang,alamat(symbol,symbol,symbol)). %cetak mahasiswa dgn nama mhs,nama dosen,ruang,alamat yg terdiri dari nama jalan,kota,provinsi
%fail. 

mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:- %mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan jika
write("\n\n Tekan sembarang tombol..."),nl, %menampilkan kalimatnya di layar output,nextline(baris baru) 
readchar(_).

cetak_mhs(mahasiswa,dosen,ruang,alamat(symbol,symbol,symbol)):- /*cetak_mhs dengan argumen nama_mahasiswa,nama_dosen,ruang,alamat tipe symbol,symbol,symbol jika */
write("2002001","\t ","Sugeng Riyadi","\t "," Abdul Kadir","\t ","1","\t ","Jl. Sudirman No. 2 ","Pontianak, ","Kalimantan Barat"),nl, /*menmpilkan NIM, nama mahasiswa, Nama Dosen, Ruangan dan Alamat*/
write("2002002","\t ","Yulia Sugondo","\t "," Abdul Kadir","\t ","1","\t ","Jl. A. Yani No. 10 ","Klaten, ","Jawa Tengah"),nl,
write("2002003","\t ","Budiman Sejati","\t "," Abdul Kadir","\t ","1","\t ","Jl. Slamet Riyadi No. 45. ","Solo, ","Jawa Tengah"),nl.


%FAKTA-FAKTA

/*Intelegensi Buatan adalah matkul_yang_diajarkan_pd_smstr_tsb yang diambil oleh mahasiswa bernama Sugeng Riyadi, Yulia Sugondo, Budiman
  di ruang 1, yang diajarkan oleh Abdul Kadir*/

matkul_yg_diajarkan_pd_smstr_tsb("Intelegensi Buatan","Sugeng Riyadi","1","Abdul Kadir").
matkul_yg_diajarkan_pd_smstr_tsb("Intelegensi Buatan","Yulia Sugondo","1","Abdul Kadir").
matkul_yg_diajarkan_pd_smstr_tsb("Intelegensi Buatan","Budiman Sejati","1","Abdul Kadir").

/*PDE adalah matkul_yang_diajarkan_pd_smstr_tsb yang diambil oleh mahasiswa bernama Laksamana Sukardi, Rini Suwandi, Kwik Kian Gie
  di ruang 2, yang diajarkan oleh Indra Yatini*/
  
matkul_yg_diajarkan_pd_smstr_tsb("PDE","Laksamana Sukardi","2","Indra Yatini").
matkul_yg_diajarkan_pd_smstr_tsb("PDE","Rini Suwandi","2","Indra Yatini").
matkul_yg_diajarkan_pd_smstr_tsb("PDE","Kwik Kian Gie","2","Indra Yatini").

/*Teknik Antar Muka adalah matkul_yang_diajarkan_pd_smstr_tsb yang diambil oleh mahasiswa bersama Riri Reza, Rachel Maryam, Garin Nugroho
  di ruang 3, yang diajarkan oleh Sigit Anggoro*/

matkul_yg_diajarkan_pd_smstr_tsb("Teknik Antar Muka","Riri Reza","3","Sigit Anggoro").
matkul_yg_diajarkan_pd_smstr_tsb("Teknik Antar Muka","Rachel Maryam","3","Sigit Anggoro").
matkul_yg_diajarkan_pd_smstr_tsb("Teknik Antar Muka","Garin Nugroho","3","Sigit Anggoro").

/*Mahasiswa yang mengambil matakuliah Intelegensi Buatan, bernama Sugeng Riyadi, berjenis kelamin laki-laki NIM 2002001, alamat asal Jl. No. 2 Pontianak Kalimantan Barat
  begitu juga selanjutnya ...*/
	
mhs("Intelegensi Buatan","Sugeng Riyadi",lakilaki,"2002001",alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat")).
mhs("Intelegensi Buatan","Yulia Sugondo",perempuan,"2002002",alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah")).
mhs("Intelegensi Buatan","Budiman Sejati",lakilaki,"2002003",alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah")).

/*Mahasiswa yang mengambil matakuliah PDE, bernama Laksamana Sukardi, berjenis kelamin laki-laki, NIM 2002004, alamat asal Jl. MT. Haryono No. 10 Palembang Sumatera Selatan
  begitu juga selanjutnya ...*/

mhs("PDE","Laksamana Sukardi",lakilaki,"2002004",alamat("Jl. MT. Haryono No. 10","Palembang","Sumatera Selatan")).
mhs("PDE","Rini Suwandi",perempuan,"2002005",alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur")).
mhs("PDE","Kwik Kian Gie",lakilaki,"2002006",alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan")).

/*Mahasiswa yang mengambil matakuliah Teknik Antar Muka, bernama Riri Reza, berjenis kelamin laki-laki, NIM 2002007, alamat asal Jl. RW Monginsidi No. 30 Purwokerto Jawa Tengah
  begitu juga selanjutnya ...*/

mhs("Teknik Antar Muka","Riri Reza",lakilaki,"2002007",alamat("Jl. RW Monginsidi No. 30","Purwokerto","Jawa Tengah")).
mhs("Teknik Antar Muka","Rachel Maryam",perempuan,"2002008",alamat("Jl. Otista No. 112","Bandung","Jawa Barat")).
mhs("Teknik Antar Muka","Garin Nugroho",lakilaki,"2002009",alamat("Jl. Tanjung Pura No. 101","Jaya Pura","Papua")).

/*Intelegensi Buatan adalah matakuliah, yang nama dosen pengajarnya adalah Abdul Kadir, matakuliah dari program studi Manajemen Informatikan, ruang 1
  begitu juga selanjutnya ...*/

matkul("Intelegensi Buatan","Abdul Kadir","Manajemen Informatika","1").
matkul("PDE","Indra Yatini","Teknik Informatika","2").
matkul("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer","3").



GOAL
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan.