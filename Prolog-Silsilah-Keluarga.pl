:- discontiguous pasangan/2.
:- discontiguous anak/2.

jenis_kelamin(franco, laki_laki).
jenis_kelamin(gusion, laki_laki).
jenis_kelamin(aldous, laki_laki).
jenis_kelamin(balmond, laki_laki).
jenis_kelamin(akai, laki_laki).

jenis_kelamin(hanabi, perempuan).
jenis_kelamin(nana, perempuan).
jenis_kelamin(angela, perempuan).
jenis_kelamin(kagura, perempuan).

pasangan(franco, hanabi).
anak(gusion, franco).
anak(gusion, hanabi).
anak(kagura, franco).
anak(kagura, hanabi).
anak(nana, franco).
anak(nana, hanabi).
pasangan(gusion, angela).
anak(aldous, gusion).
anak(aldous, angela).
pasangan(nana, akai).
anak(balmond, akai).
anak(balmond, nana).

kakek(franco, aldous).
kakek(franco, balmond).
nenek(hanabi, aldous).
nenek(hanabi, balmond).

ayah(X, Y) :-
    pasangan(X, Z),
    anak(Y, Z).

ibu(X, Y) :-
    pasangan(Z, X),
    anak(Y, Z).

saudara_kandung(X, Y) :-
    anak(X, Z),
    anak(Y, Z),
    X \= Y.

anak_laki_laki(X, Y) :-
    anak(X, Y),
    \+ jenis_kelamin(X, perempuan).

anak_perempuan(X, Y) :-
    anak(X, Y),
    jenis_kelamin(X, perempuan).

cucu(X, Y) :-
    anak(X, Z),
    anak(Z, Y).

cucu_lelaki(X, Y) :-
    cucu(X, Y),
    \+ jenis_kelamin(X, perempuan).

cucu_perempuan(X, Y) :-
    cucu(X, Y),
    jenis_kelamin(X, perempuan).
