% Definição das probabilidades marginais para Str e Flw
0.5::str(snow_covered).
0.5::str(dry).

0.5::flw(alto).
0.5::flw(baixo).

% Probabilidades condicionais de R dado Str e Flw
0.8::r(alta) :- str(snow_covered), flw(alto).
0.6::r(alta) :- str(snow_covered), flw(baixo).
0.3::r(alta) :- str(dry), flw(alto).
0.1::r(alta) :- str(dry), flw(baixo).
1.0::r(baixa) :- \+r(alta).

% Probabilidades condicionais de V dado R
0.9::v(alta) :- r(alta).
0.2::v(alta) :- r(baixa).
1.0::v(baixa) :- \+v(alta).

% Consultando a probabilidade P(V | Str = snow_covered)
query(v(alta)).
evidence(str(snow_covered)).
