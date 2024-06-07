domains
name, phone, univer, color, bankName, city, street, house, flat = string.
amount, price = integer.
address = address(city, street, house, flat).
object = building(name, price);
	 region(name, price);
	 water_transport(name, color, price);
	 car(name, color, price).

predicates
tel(name, phone, address).
deposit(name, bankName, amount).
owner(name, object).

all_objects(name, name).
all_objects_price(name, name, price).
all_objects_price_sum(name, price).
all_objects_price_sum_elem(name, symbol, price).

clauses
all_objects_price(Surname, Name, Price) :- owner(Surname, car(Name, _, Price)).
all_objects_price(Surname, Name, Price) :- owner(Surname, building(Name, Price)).
all_objects_price(Surname, Name, Price) :- owner(Surname, region(Name, Price)).
all_objects_price(Surname, Name, Price) :- owner(Surname, water_transport(Name, _, Price)).

owner("Denis", car("BMW", "Green", 1000)).
owner("Egor", region("Nothung", 0)).
owner("Darya", building("Moscow-city", 100500)).
owner("Valera", car("BMW", "green", 1000)).
owner("Anton", region("Krasnogorsk", 10000)).
owner("Denis", building("Mail.ru Office", 20000)).
owner("Egor", water_transport("Yacht", "Red", 10000)).
owner("Darya", car("Cadillac", "Black", 304000)).
owner("Anton", building("BMSTU", 200000)).
owner("Valera", car("Mercedes", "White", 30000)).

all_objects(Surname, Name) :- owner(Surname, car(Name, _, _)).
all_objects(Surname, Name) :- owner(Surname, building(Name, _)).
all_objects(Surname, Name) :- owner(Surname, region(Name, _)).
all_objects(Surname, Name) :- owner(Surname, water_transport(Name, _, _)).

all_objects_price_sum_elem(Surname, building, Price):- owner(Surname, building(_, Price)).
all_objects_price_sum_elem(Surname, region, Price):- owner(Surname, region(_, Price)).
all_objects_price_sum_elem(Surname, water_transport, Price):- owner(Surname, water_transport(_, _, Price)).
all_objects_price_sum_elem(Surname, car, Price):- owner(Surname, car(_, _, Price)).
all_objects_price_sum_elem(_, _, 0).

all_objects_price_sum(Surname, Price):- all_objects_price_sum_elem(Surname, building, Price1), all_objects_price_sum_elem(Surname, region, Price2),
all_objects_price_sum_elem(Surname, water_transport, Price3), all_objects_price_sum_elem(Surname, car, Price4), Price = Price1 + Price2 + Price3 + Price4.

tel("Anton", "812314214", address("moscow", "olenevaya", "12", "4")).
tel("Egor", "814314214", address("moscow", "olenevaya2", "12", "4")).
tel("Denis", "815314214", address("moscow", "olenevaya3", "12", "4")).
tel("Darya", "815314214", address("moscow", "olenevaya3", "12", "4")).
tel("Darya", "817314214", address("moscow", "olenevaya", "13", "4")).
tel("Valera", "816314214", address("moscow", "olenevaya2", "16", "4")).

deposit("Egor", "sber", 1000).
deposit("Anton", "tinkoff", 20000).
deposit("Denis", "raif", 100000).
deposit("Valera", "sber", 10000).

goal
%all_objects("Denis", X);
%all_objects_price("Denis", X, Y).
all_objects_price_sum("Denis", X).