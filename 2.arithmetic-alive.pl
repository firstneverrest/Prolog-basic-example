% Are they alive?

lives(lucas, 1920, 1987).
lives(jacob, 1912, 1989).
lives(logan, 1931, 1999).
lives(mia, 1920, 2012).

alive(X,Y):-lives(X,A,B), Y>=A, Y=<B.


