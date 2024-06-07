domains
  num = integer.
  list = num*.
  elements = 
    n(num);
    l(list);
    k(llist).
  llist = elements*.

predicates
  t(llist, llist).
  process_element(elements, elements).
  sum_list(list, num, num).
  diff_list(list, num, num).
  length_list(list, num).
  my_append(list, list, list).

clauses
  t([], []).
  t([H | T], [HRes | TRes]) :-
    process_element(H, HRes),
    t(T, TRes).

  process_element(n(E), n(E)) :- !.
 
  process_element(l(L), n(Res)) :- 
    length_list(L, Len), 
    Len mod 2 = 0,
    sum_list(L, 0, Res), !.
  
  process_element(l(L), n(Res)) :- 
    length_list(L, Len), 
    Len mod 2 <> 0,
    diff_list(L, 0, Res), !.
    
  process_element(k(L), k(LRes)) :-
    t(L, LRes), !.

my_append([], L, L).
my_append([H | T], L, [H | R]) :-
    my_append(T, L, R).

sum_list([], Acc, Acc).
sum_list([H | T], Acc, Res) :-
    NewAcc = Acc + H,
    sum_list(T, NewAcc, Res).

diff_list([], Acc, Acc).
diff_list([H | T], Acc, Res) :-
    NewAcc = Acc - H,
    diff_list(T, NewAcc, Res).

length_list([], 0).
length_list([_ | T], Len) :-
    length_list(T, RestLen),
    Len = RestLen + 1.

goal
  t([l([1,2,3]), n(1), n(2), k([n(3), l([1,2])])], R).