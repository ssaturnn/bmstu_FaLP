domains
    address = address(string, string, integer, integer)
    gender = symbol
    fullName = symbol
    phone = symbol
    carMark = symbol
    carColor = symbol
    carNumber = symbol
    city = symbol

predicates
    telephone_record(fullName, gender, phone, address)
    car(symbol, string, string, integer, string)
    relative(symbol, symbol)
    grandparent(symbol, symbol, string)

clauses
    telephone_record(jonson, "Male", "+7 993 704-05-14", address("New York", "Baumana", 12, 7)).
    telephone_record(brown, "Female", "+7 911 562-61-80", address("Los Angeles", "2268 S Tongass Hwy", 5, 13)).
    telephone_record(davis, "Male", "+7 910 580-51-26", address("Chicago", "2417 Tongass Ave #111", 3, 15)).
    telephone_record(davis, "Male", "+7 916 954-25-36", address("Houston", "2417 Tongass Ave #111", 3, 15)).
    telephone_record(davis, "Male", "+7 998 406-25-41", address("San Francisco", "2417 Tongass Ave #111", 3, 15)).
    telephone_record(wilson, "Male", "+7 915 762-68-80", address("Miami", "2268 S Tongass Hwy", 5, 13)).
    telephone_record(anderson, "Female", "+7 977 592-49-68", address("Seattle", "2268 S Tongass Hwy", 5, 13)).

    relative(jonson, brown).
    relative(brown, davis).
    relative(wilson, davis).
    relative(anderson, wilson).

    grandparent(Grandfather, Grandson, "Male") :-
        telephone_record(Grandfather, "Male", _, _),
        relative(Grandfather, Son),
        relative(Son, Grandson).

    car(jonson, "Toyota", "black", 50000, "A432BH").
    car(jonson, "BMW", "blue", 70000, "E777KO").
    car(wilson, "Mercedes", "green", 60000, "M555AT").
    car(wilson, "Ford", "white", 45000, "Y999YY").
    car(davis, "Toyota", "black", 55000, "O111MY").

goal
    grandparent(Grandmother, _, _),
    car(Grandmother, CarMark, CarColor, _, _).

