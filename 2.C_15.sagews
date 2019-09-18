︠8d10df57-8a3a-48db-800f-b14e78bcfed1︠
G=GL(2,Integers(3))
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 2]],
                               [[1, 0], [3, 1]],[[-1, 0], [0, 1]],[[1,10],[0,1]]]])
H_1.order()
H_2=G.subgroup([G(x) for x in [
                               [[1, 0], [0, -1]],
                               [[1, 0], [1, 1]],[[-1,0],[0,-1]]]])

G.gap().IsConjugate(H_1,H_2)

#so  the order of H_1/+-I is 6 and is conjugate to the group of lower triangular matrices
︡c0685b2d-646c-4637-a64d-9ea43a4596c0︡{"stdout":"12\n"}︡{"stdout":"true\n"}︡{"done":true}︡
︠4d69ed06-5b3d-4944-8c25-c9e2cca7bfa8︠
G=GL(2,Integers(5))
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 2]],
                               [[1, 0], [3, 1]],[[-1, 0], [0, 1]],[[1,10],[0,1]]]])
H_2=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [1, 1]],
                               [[1, 0], [0, -1]],[[1,0],[0,2]]]])
H_2.order()
H_1.order()

#so the order of H_1/+-I is 20
︡8721fb9d-68f3-4308-a3ef-f5dfd27e4f98︡{"stdout":"40\n"}︡{"stdout":"40\n"}︡{"stdout":"False\n"}︡{"done":true}︡
︠ea006b82-6a55-41da-a3d4-5280368bacd2s︠
G=GL(2,Integers(15))
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 2]],
                               [[1, 0], [3, 1]],[[-1, 0], [0, 1]],[[1,10],[0,1]]]])
H_1.order()
G([[-4, 0], [0, -4]]) in H_1
︡4c52aff9-0b4b-4a29-8bdb-fb52549b6978︡{"stdout":"240\n"}︡{"stdout":"False\n"}︡{"done":true}︡
︠4127a401-996e-43c2-8817-4b61970772fa︠
︠ad9110f4-f554-4af9-80e1-270f8764ed8b︠









