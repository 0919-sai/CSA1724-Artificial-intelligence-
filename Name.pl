% Facts

dob(john, '1990-05-15').

dob(sarah, '1995-09-20').

dob(emily, '1992-03-10').

dob(michael, '1988-11-25').

dob(lisa, '1998-07-03').



% Rules

age(Person, Age) :-

    dob(Person, Date),

    date(Y, M, D) = Date,

    date(Y1, M1, D1) = current_date,

    Age is Y1 - Y - (M1 < M) - (M1 == M, D1 < D).



current_date(date(2024, 3, 26)).
