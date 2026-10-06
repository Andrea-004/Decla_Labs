almacenar(N, [N]) :-
    N < 10.
almacenar(N, [D|T]) :-
    N >= 10,
    D is N mod 10,
    Resto is N // 10,
    almacenar(Resto, T).

almacenar_digitos :-
    write('Ingresa un numero entero: '), read(N),
    almacenar(N, L),
    write('La lista de digitos es: '),
    write(L), nl.
