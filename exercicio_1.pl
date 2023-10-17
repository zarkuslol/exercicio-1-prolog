/*
  Exerc�cio 1 Programa��o L�gica

  Data de envio: 10/10/2023

  Integrantes:
  - Victor Ricarte Silva
  - Amanda Estrela
  - Jos� Lucas Ferreira de Lima
*/

/* a - Marcelo, b - Ester, c - Teresa, d - Joao, e - Priscila, f - Augusto,
    g - Paulo */

/* Todas as rela��es bin�rias de pai e de m�e */
pai(marcelo, paulo).
pai(marcelo, teresa).
pai(marcelo, joao).
pai(joao, augusto).
mae(ester, teresa).
mae(ester, joao).
mae(priscila, augusto).

/* Todas as propriedades masculinas e femininas */
homem(marcelo).
homem(joao).
homem(paulo).
homem(augusto).
mulher(ester).
mulher(teresa).
mulher(priscila).

/* Regra definindo a rela��o de av� (por ex. entre A e F) */
av�(X, Y) :-
    pai(X, Z),
   (pai(Z, Y); mae(Z, Y)).

/* Regra definindo a rela��o de av� (por ex. entre B e F) */
av�(X, Y) :-
    mae(X, Z),
   (pai(Z, Y); mae(Z, Y)).

/* Regra definindo a rela��o de irm�o (por ex. entre G e C ou entre D e C */
irmao(X, Y) :-
    homem(X),
   (pai(Z, X), pai(Z, Y));
   (mae(Z, X), mae(Z, Y)).

/* Regra definindo a rela��o de irm�o completo (por ex. entre D e C) */
irmao_completo(X, Y) :-
    homem(X),
   (pai(Z, X), pai(Z, Y)),
   (mae(A, X), mae(A, Y)).

/* Regra definindo a rela��o de irm� (por ex. entre C e G ou entre C e D */
irma(X, Y) :-
    mulher(X),
   (pai(Z, X), pai(Z, Y));
   (mae(Z, X), mae(Z, Y)).

/* Regra definindo a rela��o de irm� completa (por ex. entre C e D) */
irma_completa(X, Y) :-
    mulher(X),
   (pai(Z, X), pai(Z, Y)),
   (mae(A, X), mae(A, Y)).

/* Regra definindo a rela��o de tio (por ex. entre G e F) */
tio(X, Y) :-
    homem(X),
    irmao(X, Z),
   (pai(Z, Y); mae(Z, Y)).

/* Regra definindo a rela��o de tio (por ex. entre C e F) */
tia(X, Y) :-
    mulher(X),
    irma(X, Z),
   (pai(Z, Y); mae(Z, Y)).
