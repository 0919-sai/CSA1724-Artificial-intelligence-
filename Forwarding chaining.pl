% Define rules

rule(1, [if, have(fever), and, have(headache), then, have(infection)]).

rule(2, [if, have(cough), and, have(sore_throat), then, have(cold)]).



% Define facts

fact(have(fever)).

fact(have(headache)).

fact(have(cough)).



% Define predicate to check if a rule can be applied

can_apply_rule(Conditions) :-

    member(X, Conditions),

    \+ fact(X),

    \+ X = and.



% Define predicate to apply a rule

apply_rule(Conclusion) :-

    rule(_, Conclusion),

    can_apply_rule(Conclusion),

    !,

    asserta(fact(Conclusion)).



% Define predicate to perform forward chaining

forward_chaining :-

    repeat,

    (   apply_rule(_), fail

    ;   !, nl, write('Forward chaining complete.'), nl

    ).



% Example usage

% Initially, we have fever, headache, and cough.

% Let's see what new conclusions we can draw using forward chaining.

% After running forward_chaining/0, the program will infer that we have an infection.
