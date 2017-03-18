domains 
 pelajaran, nama, nilai = symbol 
predicates 
 nondeterm mata_kuliah(pelajaran,nama,nilai) 
 
clauses
 mata_kuliah(intelejensi_buatan,irfan,a). % matakuliah intelejensi_buatan diambil oleh irfan dengan nilai a, begitu juga seterusnya.
 mata_kuliah(intelejensi_buatan,komeng,d).
 mata_kuliah(intelejensi_buatan,dati,c). 
 mata_kuliah(intelejensi_buatan,fatima,b). 
 mata_kuliah(intelejensi_buatan,maspion,c).
 mata_kuliah(pde,ricky,e).  % matakuliah intelejensi_buatan diambil oleh ricky dengan nilai e.
 mata_kuliah(pde,embang,a).
 mata_kuliah(pde,salmin,d). 
 mata_kuliah(pde,vina,b).
 mata_kuliah(pde,sondang,c). 
 mata_kuliah(so,pamuji,d).  % matakuliah intelejensi_buatan diambil oleh pamuji dengan nilai d.
 mata_kuliah(so,luki,e).  
 mata_kuliah(so,sadek,b).  
 mata_kuliah(so,yusida,a). 
 mata_kuliah(so,eka,a).
 
goal
mata_kuliah(intelejensi_buatan,Nama,_);nl, % menampilkan siapa saja yang mengambil mata_kuliah intelejensi_buatan.
mata_kuliah(_,Nama_mahasiswa_yang_Tidak_Lulus,d); mata_kuliah(_,Nama_mahasiswa_yang_Tidak_Lulus,e);nl, % menampilkan nama mahasiswa yang tidak lulus, dengan kata kunci aapabila mahasiswa mendapatkan nilai d dan e maka mahasiswa tersebut tidak lulus. 
mata_kuliah(_,Nama_mahasiswa_Yang_Lulus,a); mata_kuliah(_,Nama_mahasiswa_Yang_Lulus,b); mata_kuliah(_,Nama_mahasiswa_Yang_Lulus,c);nl, % menampilkan mahasiswa yang lulus nilai matakulih yang diambil dengan kata kunci nilai akhirnya yaitu a, b dan c.
mata_kuliah(Matakuliah_yang_diajarkan,_,_);nl, % menampilkan nama - nama matakuliah.
mata_kuliah(_,Nama_Mahasiswa,_). % menampilkan semua nama mahasiswa.
  