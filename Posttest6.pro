DOMAINS
pohonchar = pohon(char, pohonchar, pohonchar); akhir /* merupakan objek jamak */

PREDICATES
nondeterm lakukan(pohonchar)		% predikat lakukan dengan objek jamak pohonchar, nondeterm diawal dapat diartikan goalnya bisa berupa pernyataan atau pertanyaan
kerjakan(char, pohonchar, pohonchar)	% predikat kerjakan, char berarti tipedata karakter, pohonchar adalah objek jamak
buat_pohon(pohonchar, pohonchar)	% predikat buat_pohon, pohonchar adalah objek jamak
sisip(char, pohonchar, pohonchar)	% predikat sisip, char berarti tipedata karakter, pohonchar adalah objek jamak
cetak_pohon(pohonchar)			% predikat cetak_pohon dengan objek jamak pohonchar
nondeterm ulang				% predikat ulang, nondeterm diawal dapat diartikan goalnya bisa berupa pernyataan atau pertanyaan

CLAUSES
lakukan(Pohon):- 	%pohon dilakukan jika
ulang,nl, 		%terulang, next line
write("*******************************************************"),nl, 	%menampilkan di layar output saja
write("Ketik 1 meng-update pohon\n"),					%menampilkan di layar output saja
write("Ketik 2 mencetak pohon\n"),					%menampilkan di layar output saja
write("Ketik 7 keluar\n"),						%menampilkan di layar output saja
write("*******************************************************"),nl,	%menampilkan di layar output saja
write("Masukkan angka - "),						%menampilkan di layar output saja
readchar(X),nl,			%readchar disini untuk menginput pada layar output, nl(next line)
				/*misalkan kita input angka 1*/
				/*misalkan kita input angka 2*/
				/*misalkan kita input angka 7*/
				/*jika kita input selain angka diatas maka dia akan mengulang atas, ke predikat ulang dan keluaar *************** ketik 1... lagi*/
				
kerjakan(X, Pohon, PohonBaru),	%pohonbaru dikerjakan dan
				/*karena kita sudah menginput angka 1, maka X = 1 dan akan melanjutkan ke aturan kerjakan(1,pohon,pohonbaru) dibawah*/
				/*karena kita sudah menginput angka 2, maka X = 2 dan akan melanjutkan ke aturan kerjakan(2,pohon,pohonbaru) dibawah*/
				/*karena kita sudah menginput angka 7, maka X = 7 dan akan melanjutkan ke aturan kerjakan(7,pohon,pohonbaru) dibawah*/
				
/*setelah melakukan aturan kerjakan 1 atau 2 atau 7 dibawah, maka dia akan kembali ke lakukan dibawah ini dan pohonbaru pun dilakukan*/				
lakukan(PohonBaru).		%pohonbaru dilakukan

%sehingga dia akan lanjut eksekusi ke aturan selanjutnya
%karena di atas x=1 maka dia akan muncul ketik karakter # untuk mengakhiri seperti pada aturan dibawah ini
%dan akan malakukan buat_pohon pohonbaru. Tapi ada aturan dibagian bawah

kerjakan('1',Pohon,PohonBaru):-			%pohon dikerjakan memasukkan angka 1 maka akan keluar pohonbaru jika
write("Ketik karakter # untuk mengakhiri: "),	%write tertampil Ketik karakter # untuk mengakhiri: dan
buat_pohon(Pohon, PohonBaru).			%maka pohon akan terbuat dengan nama pohonbaru

%ketika kita input angka 2 maka akan lanjut eksekusi ke aturan dibawah ini
%karena di atas x=2 maka dia akan muncul ketik karakter # untuk mengakhiri seperti pada aturan dibawah ini
%dan akan malakukan buat_pohon pohonbaru. Tapi ada aturan dibagian bawah

kerjakan('2',Pohon,Pohon):- 		%kita input angka 2 maka dia akan kerjakan pohon jika
cetak_pohon(Pohon),			%cetak_pohon 
write("\nTekan sembarang tombol"),
readchar(_),nl.

%ketika kita input angka 7 maka akan berakhir

kerjakan('7', _, akhir):-
exit.

%aturan pohon buat_pohon pohonbaru jika readchar(C) artinya menginputkan C, sedangkan C = # maka perulangan berhenti diaturan ini saja.
%dan akan berulang ke atas, predikat ulang pada aturan lakukan(Pohon).
%sehingga dia akan muncul ******************* ketik 1 ... lagi
%tapi jika kita input selain # maka eksekusi akan berhenti dititik itu


buat_pohon(Pohon, PohonBaru):- 		%pohon buat pohonbaru jika
readchar(C),				%membaca karakter C dan
C<>'#',!,				%C samadengan #, cut untuk menghentikan perulangan
write(C," "),				%mengeluarkan output C dan
sisip(C, Pohon, PohonTemp),		%C sisip pohon
buat_pohon(PohonTemp, PohonBaru).

buat_pohon(Pohon, Pohon).
sisip(Baru,akhir,pohon(Baru,akhir,akhir)):-!. %di cut, agar programnya berhenti, tidak lanjut terus

sisip(Baru,pohon(Elemen,Kiri,Kanan),pohon(Elemen,KiriBaru,Kanan)):- 	%sisip baru, elemen pohon kiri kanan, elemen pohon kiribaru, kanan jika
Baru<Elemen,!,								%Baru kurang dari elemen yang kita isi maka dia akan berhenti
sisip(Baru,Kiri,KiriBaru).						%sisip baru, kiri, kiribaru

sisip(Baru,pohon(Elemen,Kiri,Kanan),pohon(Elemen,Kiri,KananBaru)):-	%sisip baru, elemen pohon kiri kanan, elemen pohon kiri, kananbaru jika
sisip(Baru,Kanan,KananBaru).						%sisip baru, kanan, kananbaru						

cetak_pohon(akhir). %cetak pohon berakhir
cetak_pohon(pohon(Item,Kiri,Kanan)):-
cetak_pohon(Kiri),
write(Item, " "),
cetak_pohon(Kanan).	
ulang. 			%agar program berakhir, tidak terus mengulang. jika tidak ada ini maka eksekusi akan terus berjalan hingga menyebabkan not responding
ulang:-ulang.		%untuk mengulang perintahnya

GOAL
write("********** Sortir Pohon Karakter ************"),nl, %menampilkan karakter
lakukan(akhir).