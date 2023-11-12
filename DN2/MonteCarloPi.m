(* ::Package:: *)

(* MonteCarloPi.m *)

MonteCarloPi[n_Integer] := Module[{count, x, y},
  count = 0;
  Do[
    x = RandomReal[];
    y = RandomReal[];
    If[x^2 + y^2 <= 1, count++],
    {n}
  ];
  4.0 count/n
]
