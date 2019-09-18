︠e829008e-640c-4157-a8f2-ece1b100a300︠
E=EllipticCurve("20a2")
P=E(1,1)
︡af698e10-d834-4b4b-adbd-f6e304b6bd1c︡{"done":true}︡
︠6c4242d9-8c49-473d-8aa5-727a35176391s︠
P.order()
︡efb40234-10fe-4d02-9b40-670b0b043481︡{"stdout":"3\n"}︡{"done":true}︡
︠7be3ad27-0ef7-4bbd-b029-a6513634b425s︠
E.isogeny(P).codomain().cremona_label()
︡7736c04e-6e03-42b9-adbc-c43512eba253︡{"stdout":"'20a4'\n"}︡{"done":true}︡
︠0942983d-2ab2-4ce8-82e2-8f4cfd309af8s︠
EllipticCurve("20a4").torsion_subgroup()
︡8ee98d48-0a22-4979-bb60-cd452a79b7f1︡{"stdout":"Torsion Subgroup isomorphic to Z/2 associated to the Elliptic Curve defined by y^2 = x^3 + x^2 - 41*x - 116 over Rational Field\n"}︡{"done":true}︡
︠b86e4246-fe3e-4153-ac72-776b7b8be2ca︠









