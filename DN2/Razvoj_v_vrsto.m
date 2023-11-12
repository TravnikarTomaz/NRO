(* ::Package:: *)

(* Funkcija f(t)*)

f[t_]:=Sin[t] t^2 Exp[-t];

(* Tocka razvoja*)

t0=2;

(*Red razvoja*)

order=5;

(* Taylorjev razvoj do n-tega clena*)

taylorSeries=Series[f[t],{t,t0,order}]//Normal;

Manipulate[Module[{taylorSeries},
taylorSeries=Series[f[t],{t,t0,order}]//Normal;

(*Izris funkcije in njene aproksimacije*)

Plot[{f[t],taylorSeries},{t,0,4},PlotLegends->{"Originalna funkcija",StringJoin["Priblizek ",ToString[order],"-tega reda"]},
AxesLabel->{"t","f(t)"},PlotLabel->"Taylorjev razvoj funkcije"]],
{{order,1,"Red priblizka"},1,10,1,Appearance->"Labeled"}]

