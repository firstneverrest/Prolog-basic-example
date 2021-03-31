% Five Houses Problem in simple version

adjacent(A, B, List) :- nextto(A, B, List); nextto(B, A, List).

solution(FishOwner) :-
  length(Persons, 5),                                                          
  member((brit,red, _, _, _), Persons),                       % 1. The Brit lives in a red house
  member((swede, _, _, _,dog), Persons),                      % 2. The Swede keeps dogs as pets
  member((dane,_,tea,_,_), Persons),                          % 3. The Dane drinks tea   
  nextto((_,green,_,_,_),(_,white,_,_,_), Persons),           % 4. The Green house is on the left of the White house 
  member((_,green,coffee,_,_), Persons),                      % 5. The owner of the Green house drinks coffee. 
  member((_,_,_,pallmall,bird), Persons),                     % 6. The person who smokes Pall Mall rears birds   
  member((_,yellow,_,dunhill,_), Persons),                    % 7. The owner of the Yellow house smokes Dunhill 
  nth1(3, Persons, (_, _, milk, _, _)),                       % 8. The man living in the centre house drinks milk     
  nth1(1, Persons, (norwegian, _, _, _, _)),                  % 9. The Norwegian lives in the first house   
  adjacent((_,_,_,blend,_),(_,_,_,_,cat), Persons),           % 10. The man who smokes Blends lives next to the one who keeps cats
  adjacent((_,_,_,dunhill,_),(_,_,_,_,horse), Persons),       % 11. The man who keeps horses lives next to the man who smokes Dunhill
  member((_,_,beer,bluemaster,_), Persons),                   % 12. The man who smokes Blue Master drinks beer  
  member((german,_,_,prince,_), Persons),                     % 13. The German smokes Prince 
  adjacent((norwegian,_,_,_,_),(_,blue,_,_,_), Persons),      % 14. The Norwegian lives next to the blue house                     
  adjacent((_,_,_,blend,_),(_,_,water,_,_), Persons),         % 15. The man who smokes Blends has a neighbour who drinks water
  
  % find specific answer
  member((FishOwner, _, _, _, fish), Persons).                % Who (FishOwner) owns the fish?

  /* display all array - change solve(FishOwner) to solve(Persons) 
   and change from member((FishOwner, _, _, _, fish), Persons). 
   to member((_, _, _, _, fish), Persons). */