domains
  num = integer

predicates
  fact(num, num)
  rec_fact(num, num, num)

  fib(num, num)
  rec_fib(num, num, num, num)

clauses
  rec_fact(1, Res, Acc) :- Res = Acc.
  rec_fact(N, Res, Acc) :- 
      N > 1, 
      NewN = N - 1, 
      NewAcc = Acc * N, 
      rec_fact(NewN, Res, NewAcc).
  
  fact(N, Res) :- rec_fact(N, Res, 1).

  rec_fib(1, _, B, Res) :- Res = B.
  rec_fib(2, _, B, Res) :- Res = B.
  rec_fib(N, F1, F2, Res) :- 
      N > 2, 
      NewF1 = F2, 
      NewF2 = F1 + F2, 
      NewN = N - 1, 
      rec_fib(NewN, NewF1, NewF2, Res).
  
  fib(N, Res) :- rec_fib(N, 1, 1, Res).
