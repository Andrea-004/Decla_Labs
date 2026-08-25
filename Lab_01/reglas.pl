
:- consult('hechos.pl').

% RULE 1: is_adult/1
is_adult(Name) :-
    character(Name, _, Age),
    Age >= 18.

% RULE 2: carries_firearm/1
carries_firearm(Name) :-
    armed_with(Name, pistol).

% RULE 3: melee_only/1
melee_only(Name) :-
    armed_with(Name, _),
    \+ carries_firearm(Name).

% RULE 4: dangerous_zone/1
dangerous_zone(Place) :-
    difficulty(Place, high) ; difficulty(Place, very_high).

% RULE 5: same_location/2
same_location(Name1, Name2, Place) :-
    location(Name1, Place),
    location(Name2, Place),
    Name1 \= Name2.
