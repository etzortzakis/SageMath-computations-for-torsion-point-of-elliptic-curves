︠c2d027fe-fe66-42fc-ba47-ea39c89d4380s︠
G = GL(2, Integers(20))

H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 13]],
                               [[1, 0], [3, 3]],[[1, 15], [15, 6]]]])
H_1.order()

︡940f3d05-6fab-4783-a61c-1c6cb4b25bdd︡{"stdout":"240\n"}︡{"done":true}︡
︠727a0c91-fcbf-434c-9047-b6babafe26ac︠
P=G([[-4, 0], [0, -4]])
F=G.subgroup(list(H_1.generators())+[P])
F.order()
︠49287af8-bce7-4d07-87dc-519a36f9bda9s︠
G = GL(2, Integers(5))

H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 13]],
                               [[1, 0], [3, 3]],[[1, 15], [15, 6]]]])
H_1.order()
︡82520ceb-c0af-4cc0-85be-0e0c3eadbece︡{"stdout":"40\n"}︡{"done":true}︡
︠3632da85-fc26-40f0-9d05-1540b5e8e27c︠
︡572d02e3-4f93-49f7-a974-5a94cc950bde︡
︠df70b59f-d629-44f9-abeb-ea0eb49efab9s︠
G = GL(2, Integers(4))

H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 13]],
                               [[1, 0], [3, 3]],[[1, 15], [15, 6]]]])
H_1.order()
︡b2234294-8de8-434e-b578-72e2c7feeaee︡{"stdout":"12\n"}︡{"done":true}︡
︠18674487-303e-4359-b312-cf16b66a8b45︠









