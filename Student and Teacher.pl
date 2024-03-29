% Facts

teacher(john_doe, math).

teacher(jane_smith, physics).

teacher(mary_jones, literature).



student(amy, math).

student(jack, physics).

student(sarah, literature).

student(mark, math).

student(emily, physics).

student(ryan, literature).



% Rules

teaches_subject(Teacher, Subject) :-

    teacher(Teacher, Subject).



takes_subject(Student, Subject) :-

    student(Student, Subject).



% Example queries:

%

% Who teaches math?

% ?- teaches_subject(Teacher, math).

%

% Which subjects does John Doe teach?

% ?- teaches_subject(john_doe, Subject).

%

% What subjects does Amy take?

% ?- takes_subject(amy, Subject).

%

% Who takes physics?

% ?- takes_subject(Student, physics).
