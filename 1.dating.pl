% find that do they are dating or not.

% facts
likes(william, amelia).
likes(amelia, william).
likes(james, amelia).
likes(james, julia).
likes('_he', '64').
likes('64', '_he').
hates(james, david).
hates(amelia, david).
hates(jin, amelia).

% rule
dating(X, Y) :- likes(X,Y), likes(Y,X).
