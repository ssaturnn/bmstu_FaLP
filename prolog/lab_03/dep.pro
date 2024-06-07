domains
gender = symbol
name = string
hasgender = hasgender(gender, name)
num = integer
  
predicates
pred(hasgender, hasgender)
motherN(name, name, num, num)
findMotherN(name, name, num)
  
clauses

pred(hasgender(f, "Natalia"), hasgender(m, "Sasha")).
pred(hasgender(m, "Nikolay"), hasgender(m, "Sasha")).

pred(hasgender(m, "Yuri"), hasgender(f, "Natalia")).
pred(hasgender(f, "Nadezhda"), hasgender(f, "Natalia")).

pred(hasgender(m, "Alexander"), hasgender(m, "Nikolay")).
pred(hasgender(f, "Lyubov"), hasgender(m, "Nikolay")).

pred(hasgender(f, "Natalia"), hasgender(f, "Zhenya")).
pred(hasgender(m, "Sergey"), hasgender(f, "Zhenya")).


motherN(Name, TmpName, N, I) :- I = 1, pred(hasgender("f", TmpName), hasgender(_, Name)), !.
motherN(Name, TmpName, N, I) :- I <= N, I > 1, pred(hasgender("f", TmpName), hasgender("f", SecTmpName)), 
			I1 = I - 1, motherN(Name, SecTmpName, N, I1), !.

findMotherN(Name, MotherName, N) :- motherN(Name, MotherName, N, N).

goal

findMotherN("Sasha", MotherName, 2).