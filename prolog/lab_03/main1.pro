domains
name = symbol.
gender = symbol.

predicates
hasGender(name, symbol).
pred(name, name).
grandpred(name, gender, name, gender).

clauses
grandpred(Name, PG, GPName, GPG) :- pred(X, Name), hasGender(X, PG), pred(GPName, X), hasGender(GPName, GPG).
pred(buri, odin).
pred(bolthorn, bestla).
pred(borr, odin).
pred(bestla, odin).
pred(fjorginn, frigg).
pred(fjorgyn, frigg).
pred(odin, thor).
pred(jord, thor).
pred(odin, heimdall).
pred(nine, heimdall).
pred(odin, tyr).
pred(odin, baldr).
pred(frigg, baldr).
pred(odin, hed).
pred(frigg, hed).
pred(farabuti, loki).
pred(laufeya, loki).
pred(loki, fenrir).
pred(loki, hel).
pred(loki, jormungandr).

hasgender(loki, m).
hasgender(odin, m).
hasgender(frigg, f).
hasgender(jord, f).
hasgender(fjorginn, m).
hasgender(fjorgyn, f).
hasgender(nine, f).
hasgender(borr, m).
hasgender(bestla, f).
hasgender(bolthorn, m).
hasgender(buri, m).
hasgender(farabuti, m).
hasgender(laufeya, f).
hasgender(tyr, m).
hasgender(baldr, m).
hasgender(hed, m).
hasgender(hel, f).
hasgender(fenrir, m).
hasgender(jormungandr, m).

goal
%grandpred(baldr, _, X, f).
%grandpred(baldr, _, X, m).
%grandpred(baldr, _, X, _).
%grandpred(baldr, f, X, f).
%grandpred(baldr, f, X, _).