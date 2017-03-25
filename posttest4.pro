DOMAINS
nama,kepada,agama = symbol
ayat = unsigned

PREDICATES
kitab(nama, ayat)
agama(agama,nama)
nondeterm diwahyukan(kepada, nama)
run
x(nama)

CLAUSES
diwahyukan("Muhammad SAW",alquran).
diwahyukan("Isa AS",injil).
diwahyukan("Musa AS",taurat).
diwahyukan("Daud AS",zabur).

kitab(alquran, 6666).
kitab(injil, 31171).
kitab(taurat, 5845).
kitab(zabur, 2248).

agama(islam,alquran).
agama(kristen,injil).
agama(yahudi,taurat).
agama(budha,zabur).

x(injil).
x(taurat).

run:-
diwahyukan(_,Nama),
agama(Agama,Nama),
write(Nama," Adalah kitab suci agama ",Agama,"\n"),
kitab(Nama, Ayat),
Ayat > 5000,
not(x(Nama)),!,
fail.
run.


GOAL
run.