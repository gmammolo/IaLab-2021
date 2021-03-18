/*
 * $ swipl run.pl hello darkness my old friend
 * Example script
 * Called with [hello,darkness,my,old,friend]
 */ 

:- consult('labirinto-grande.model.pl').
:- consult('labirinto.action.pl').
:- consult('dfs.action.pl').

% :- set_prolog_flag(verbose, silent).
:- initialization(main).

main :-
    format('Soluzione labirinto grande~n'),
    ricerca_soluzione(L),  
    length(L,Length),
    format('Length: ~d ~n', Length),
    format('soluzione: ~k ~n',[L]),
    /* il sistema permette di leggere le variabili in input (guardare sopra) */
    % current_prolog_flag(argv, Argv),
    % format('Called with ~q~n', [Argv]),
    halt.
main :-
    halt(1).