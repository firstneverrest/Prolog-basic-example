% calculate density of the population

population(china, 200).
population(india, 180).
population(japan, 80).
population(thailand, 30).

area(china, 10).
area(india, 5).
area(japan, 2).
area(thailand, 3).

density(X,Y):-population(X,Pop),
              area(X, Ar),
              Y is Pop/Ar.
