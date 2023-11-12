(* ::Package:: *)

(*Definirajte funkcijo f(t)*)
f[t_]:=Sin[t] t^2 Exp[-t];

(*Definirajte to\[CHacek]ko razvoja*)
t0=2;

(*Definirajte red razvoja*)
order=5;
(*Lahko prilagodite glede na va\[SHacek]e potrebe*)(*Izra\[CHacek]unajte Taylorjev razvoj do n-tega \[CHacek]lena*)
taylorSeries=Series[f[t],{t,t0,order}]//Normal;

Manipulate[Module[{taylorSeries},
(*Izra\[CHacek]unajte Taylorjev razvoj do n-tega \[CHacek]lena*)
taylorSeries=Series[f[t],{t,t0,order}]//Normal;
(*Izris funkcije in njenega pribli\[ZHacek]ka*)
Plot[{f[t],taylorSeries},{t,0,4},PlotLegends->{"Originalna funkcija",StringJoin["Pribli\[ZHacek]ek ",ToString[order],"-tega reda"]},
AxesLabel->{"t","f(t)"},PlotLabel->"Taylorjev razvoj funkcije"]],
{{order,1,"Red pribli\[ZHacek]ka"},1,10,1,Appearance->"Labeled"}]

