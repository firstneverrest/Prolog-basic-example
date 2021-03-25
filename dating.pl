% find that do they are dating or not.

% facts
likes(william, amelia).
likes(amelia, william).
likes(james, amelia).
likes(james, julia).
hates(james, david).
hates(amelia, david).
hates(jin, amelia).

% rule
dating(X, Y) :- likes(X,Y), likes(Y,X).
