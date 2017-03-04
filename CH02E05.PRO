/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E05.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

predicates
  car(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
  truck(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)
  vehicle(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)

clauses
  car(chrysler,130000,3,red,12000).		% Fakta
  car(ford,90000,4,gray,25000).
  car(datsun,8000,1,red,30000).

  truck(ford,80000,6,blue,8000).
  truck(datsun,50000,5,orange,20000).
  truck(toyota,25000,2,black,25000).

  vehicle(Make,Odometer,Age,Color,Price):-	% Aturan vehicle jika car atau truck
	car(Make,Odometer,Age,Color,Price);
	truck(Make,Odometer,Age,Color,Price).

goal
  car(Make,Odometer,Years_on_road,Body,25000).	% Goal
  % kenapa jika di run akan muncul Make=ford,Odometer=90000,Years_on_road=4,Body=gray ?
  % kuncinya ada di predikat car dan price 25000
  % pertanyaan = make,odometer,year_on_road,body pada mobil yang harganya 25000? 
  % pernyataan = 25000 (price)
  % dan dalam fakta car(ford,90000,4,gray,25000)
  % car(ford,90000,4,gray,25000)=car(make,odometer,years_on_road,body,25000)
  % sehingga hasilnya Make=ford,Odometer=90000,Years_on_road=4,Body=gray
  % kenapa 1 solution? karena dalam fakta, mobil yang harganya 25000 hanya ada 1