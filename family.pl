/*ANDRA UMORU 
324334
PROLOG SMALL PROGRAM */

:- dynamic father/2.
:- dynamic mother/2.
:- dynamic brother/2.
:- dynamic sister/2.
:- dynamic male/2.
:- dynamic female/2.


children:-

male(andra).
male(paul).
male(john).
male(piotr).

female(maryam).
female(ola).
female(maria).

husband(andra).
wife(maryam).

/*father(maryam, daniel).
father(andra, umoru).
father(dauda, umoru).
father(philip, umoru). */

mother(maryam, esther).
mother(halima, esther).
mother(andra, falta).

mother(maryam).
who_is_maryam_mother :- mother(maryam),
% write('Maryam mother is esther').
write('Maryam mother is '),
mother(Y).

parent(mrs_esther_daniel, maryam).
parent(mr_daniel_mshelbila, maryam).

% father:- 

family:-
write('********************************************'), nl,
write('---WELCOME TO EXTENDED FAMILY PROGRAM!!!--- '), nl,
write('********************************************'), nl,
nl,
nl,
checkfor(Family),
write('Your Mother-in-law is '),
write(Family),
nl,
checkfor(Family),
write('Your Father-in-law is mr_daniel_mshelbila'),
% write(Family),
nl,
nl,
nl,
nl,

write('Enjoy Your Marriage!!!').
undo.


checkfor(mrs_esther_daniel) :- mrs_esther_daniel.
checkfor(mr_daniel_mshelbila) :- mr_daniel_mshelbila, !.

mrs_esther_daniel:-
checkFamily(maryam),
checkFamily(andra),
nl.


mr_daniel_mshelbila:-
checkFamily(maryam),
checkFamily(andra),
nl.


askQuestion(Question) :-
write(' Are you married to: '),
write(Question),
write(' ? '),
read(Reply),
nl,
((Reply == yes; Reply == y)
->
assert(yes(Question));
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

checkFamily(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
askQuestion(S))).
undo :- retract(yes(_)), fail.
undo :- retract(no(_)), fail.
undo.


 
% SOME OUTPUT
/* ?- assert(sister(amina, zainab)).
true.

sister(X, Y).
X = amina
Y = zainab
*/

/* ?- assert(father(andra, umoru)).
true.

father(X, Y).
X = andra
Y = umoru
*/

/* ?- assert(mother(andra, falta)).
true.

sister(X, Y).
X = andra
Y = falta
*/

/* ?- assert(mother(maryam, esther)).
true.
sister(X, Y).
X = maryam
Y = esther
*/

/* ?- assert(brother(philip, andra)).
true.

sister(X, Y).
X = philip
Y = andra
*/

