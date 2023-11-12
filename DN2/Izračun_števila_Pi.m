(* ::Package:: *)

(*Main.nb*)
Get["C:\\Users\\tomaz\\OneDrive\\Dokumenti\\Fakulteta za strojni\[SHacek]tvo\\3.letnik 1 semester\\Napredna ra\[CHacek]unalni\[SHacek]ka orodja\\Naloga 2\\MonteCarloPi.m"]

(*Stevilo naklju\[CHacek]nih tock*)
n=100000;

approxPi=MonteCarloPi[n];
Print["Priblizna vrednost za \[Pi]:",approxPi]

(*Graficni prikaz*)

points=Table[{RandomReal[],RandomReal[]},{i,n}];
insidePoints=Select[points,#[[1]]^2+#[[2]]^2<=1&];

ListPlot[{points,insidePoints},PlotStyle->{{PointSize[0.01],Red},{PointSize[0.01],Blue}},AxesOrigin->{0,0},
PlotLegends->{"Vse tocke","Tocke v krogu"}]






