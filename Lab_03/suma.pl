% Dado un numero N, sumar N con todos los numeros anteriores
% hasta llegar a 1.   suma(N, S)  ->  S = N + (N-1) + ... + 1

% Caso base: la suma de 1 es 1.
suma(1, 1).

% Caso recursivo: suma(N) = N + suma(N-1), solo si N > 1.
suma(N, S) :-
    N > 1,
    N1 is N - 1,
    suma(N1, R),
    S is N + R.

% Consulta de ejemplo (usada en el arbol SLD):
%   ?- suma(3, S).      % S = 6
%
% Para depurar:
%   ?- trace, suma(3, S).
