% Предикат для создания списка чисел, сумма которых равна S
sum_list(S, List) :-
    findall(X, between(1, S, X), Numbers),
    subset_sum(Numbers, S, List).

% Предикат для поиска подмножества чисел, сумма которых равна S
subset_sum(_, 0, []).
subset_sum([H|T], S, [H|Subset]) :-
    S1 is S - H,
    S1 >= 0,
    subset_sum(T, S1, Subset).
subset_sum([_|T], S, Subset) :-
    subset_sum(T, S, Subset).

% Предикат для запуска программы с заданным входом
run(X, Lists) :-
    findall(List, sum_list(X, List), Lists).

% Начало программы
:- run(15, Lists), writeln(Lists).
