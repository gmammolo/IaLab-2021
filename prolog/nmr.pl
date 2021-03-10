/*
 * su prolog non esiste il not logico.
 * si usa la NEGAZIONE PER FALLIMENTO.
 * su Prolog si può negare un goal.
 * Esempio Uccello e Pinguino.
 * Gli uccelli volano ma i pinguini no. Non è possibile inserire il goal \+penguin(X):-fly(X),
 * ma è possibile aggiungere la negazione del goal penguin alla definizione di fly
 */

fly(X):-bird(X), \+penguin(X).
bird(X):-penguin(X).
bird(tweety).
penguin(tux).