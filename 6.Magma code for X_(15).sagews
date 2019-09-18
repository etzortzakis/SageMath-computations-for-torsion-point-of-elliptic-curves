A<u,n>:=AffineSpace(Rationals(),2);
f:=-27*(u^2 + 5*u - 25)*(n + 8)^3*n*(u - 3)^5 - (u^4 - 40*u^2 + 120*u - 80)^3*(n - 1)^3;
C:=Curve(A,f);
Genus(C);
D:=ProjectiveClosure(C);
P:=C![3,1];
F:=EllipticCurve(D,P);
//Conductor(F);
CremonaReference(F);













