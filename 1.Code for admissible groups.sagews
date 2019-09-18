︠c63ae6c6-0b81-42be-9e16-8352b9d56e7as︠
def Admissible_Subgroups(n,M):
    def has_surj_det(Hprime):
        return (len(uniq([G(x).matrix().determinant() for x in Hprime.AsList()])) == euler_phi(n))
    G=GL(2,Integers(n))
    order3=[x for x in G if x.order()==3];
    print "There are %s elements of order 3" %len(order3)
    order9=[x for x in G if x.order()==9]
    print "There are %s elements of order 9" %len(order9)
    Mgap = M.gap()
    Msub = Mgap.ConjugacyClassesSubgroups()
    subgroups = []
    for cc in Msub:
        Hprime = cc.Representative()
        if has_surj_det(Hprime):
        
        
            subgroups += list(cc.AsList())
    print "There are %s conjugacy classes of subgroups" %len(subgroups)
    N=[]
    for x in order3:
        for H in subgroups:
            if G.subgroup(list(H.GeneratorsSmallest())+[x]).order()/H.Order()==3:
                N.append([x,subgroups.index(H),H.Order()])
    print "There are %s admissible pairs" %len(N)
    if len(N)!=0:
        
        m=max([A[2] for A in N])
        L=[A[0:2] for A in N if A[2]==m]
        print "There are %s pairs of maximum order" %len(L)
        def issub(A,B):
            return all(x in B.gap().AsList() for x in A.gap().AsList())
        for A in N:
            if all([not issub(G.subgroup(list(subgroups[A[1]].GeneratorsSmallest())+[A[0]]),G.subgroup(list(subgroups[B[1]].GeneratorsSmallest())+[B[0]])) for B in L]):
                print "Something is rotten in the state of admissible groups"
            
            
        
        K=[]
        K.append(G.subgroup(list(subgroups[L[0][1]].GeneratorsSmallest())+[L[0][0]]))
        for x in L:
            H=G.subgroup(list(subgroups[x[1]].GeneratorsSmallest())+[x[0]])
            if all([not G.gap().IsConjugate(H.gap(),B.gap()) for B in K]):
                K.append(H)
        print "There are %s maximal groups up to conjugation" %len(K)
        #for x in K:
         #   print x.gens()
        return K
︡a39ca9d9-eafb-42ce-9440-4b0196dc5add︡{"done":true}︡
︠5b7e01ca-e9cd-4e8c-88de-0b155548b8a7s︠
#running time < 1 min
G = GL(2, Integers(11))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [1, 1]],
                               [[1, 0], [0, 7]],
                               [[1, 0], [0, 5]]]])
Admissible_Subgroups(11,M)
︡351a5255-f4d3-43bd-8748-d4db478f4350︡{"stdout":"There are 110 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 36 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 0 admissible pairs"}︡{"stdout":"\n"}︡{"done":true}︡
︠10565e04-26c5-4ea8-b3ef-3f1dedbdfd0fs︠
#running time < 1 min,corrected
G = GL(2, Integers(11))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 1], [0, 1]],
                               [[1, 0], [0, 7]],
                               [[1, 0], [0, 5]]]])
Admissible_Subgroups(11,M)
︡aa9ab227-6da9-4dcb-adb8-65e4f0d25f29︡{"stdout":"There are 110 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 36 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 0 admissible pairs"}︡{"stdout":"\n"}︡{"done":true}︡
︠6f39b0bd-8cfc-4ccc-b3ca-d2a2d726802ds︠
#running time ~3 mins
G=GL(2,Integers(16))
M = G.subgroup([G(x) for x in [[[1, 0], [1, 1]],
                               [[15, 0], [0, 1]],
                               [[1, 0], [0, 3]],
                               [[1, 0], [0, 5]]]])
Admissible_Subgroups(16,M)
︡b5a768f7-a0f0-48a2-94bd-fcd11f0814d1︡{"stdout":"There are 128 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 269 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 0 admissible pairs"}︡{"stdout":"\n"}︡{"done":true}︡
︠d3f23341-f86b-4914-a9e8-284221a923b0s︠
#running time ~ 6 mins
G = GL(2, Integers(15))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                             [[1, 0], [1, 1]],
                              [[1, 0], [0, 7]],
                               [[1, 0], [0, 2]],]])
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 2]],
                               [[1, 0], [3, 1]],[[-1, 0], [0, 1]],[[1,10],[0,1]]]])
G.gap().IsConjugate(M.gap(),H_1.gap())

L1=Admissible_Subgroups(15,M)
# next predicate verifies that both  M and H_1 are conjugate to one of the groups in L1
((G.gap().IsConjugate(M.gap(),L1[0].gap())) or (G.gap().IsConjugate(M.gap(),L1[1].gap()))) and ((G.gap().IsConjugate(H_1.gap(),L1[0].gap())) or ((G.gap().IsConjugate(H_1.gap(),L1[1].gap()))))
︡77597f9b-518c-444d-bf70-b929ce52cb6c︡{"stdout":"false"}︡{"stdout":"\n"}︡{"stdout":"There are 188 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 120 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 360 admissible pairs"}︡{"stdout":"\nThere are 12 pairs of maximum order\nThere are 2 maximal groups up to conjugation"}︡{"stdout":"\n"}︡{"stdout":"true"}︡{"stdout":"\n"}︡{"done":true}︡
︠a68755bb-c2c4-468d-9d89-cc20de104425︠
︡9823f5aa-da17-47a1-9c96-cf6a4ead00c5︡
︠ff3364fe-54af-496c-863e-1da9a3a2f3a3︠
#running time ~15 mins
G = GL(2, Integers(20))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [1, 1]],
                               [[1, 0], [0, 11]],
                               [[1, 0], [0, 13]]]])
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 13]],
                               [[1, 0], [3, 3]],[[1, 15], [15, 6]]]])

L1=Admissible_Subgroups(20,M)
G.gap().IsConjugate(H_1.gap(),L1[0].gap())
︡e1cd6ac7-7743-44df-83af-7ca3678656aa︡{"stdout":"There are 188 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 462 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 240 admissible pairs"}︡{"stdout":"\nThere are 8 pairs of maximum order\nThere are 1 maximal groups up to conjugation"}︡{"stdout":"\n"}︡{"stdout":"true\n"}︡{"done":true}︡
︠2c7a22f3-12c7-4b68-b817-269c14cfb5f7s︠
#running time ~3 mins
G = GL(2, Integers(12))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [6, 1]],
                               [[1, 0], [0, 7]],
                               [[1, 0], [4, 1]],
                               [[1, 0], [0, 5]]]])
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 5]],
                               [[1, 0], [0, 7]],[[1, 0], [6, 1]],[[1,4],[0,1]]]])
L1=Admissible_Subgroups(12,M)
# next predicate verifies that both  M and H_1 are conjugate to one of the groups in L1
((G.gap().IsConjugate(M.gap(),L1[0].gap())) or (G.gap().IsConjugate(M.gap(),L1[1].gap()))) and ((G.gap().IsConjugate(H_1.gap(),L1[0].gap())) or ((G.gap().IsConjugate(H_1.gap(),L1[1].gap()))))
︡d181c31f-dd8e-43c5-9d47-8bd8139ba78e︡{"stdout":"There are 80 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 116 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 348 admissible pairs"}︡{"stdout":"\nThere are 12 pairs of maximum order\nThere are 2 maximal groups up to conjugation"}︡{"stdout":"\n"}︡{"stdout":"true"}︡{"stdout":"\n"}︡{"done":true}︡
︠58beb632-5be8-4d68-b4c9-56695790534c︠
#running time ~3 mins, corrected!
G = GL(2, Integers(12))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 6], [0, 1]],
                               [[1, 0], [0, 7]],
                               [[1, 4], [0, 1]],
                               [[1, 0], [0, 5]]]])
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 0], [0, 5]],
                               [[1, 0], [0, 7]],[[1, 6], [0, 1]],[[1,0],[4,1]]]])
L1=Admissible_Subgroups(12,M)
# next predicate verifies that both  M and H_1 are conjugate to one of the groups in L1
((G.gap().IsConjugate(M.gap(),L1[0].gap())) or (G.gap().IsConjugate(M.gap(),L1[1].gap()))) and ((G.gap().IsConjugate(H_1.gap(),L1[0].gap())) or ((G.gap().IsConjugate(H_1.gap(),L1[1].gap()))))
︡945fb624-b723-4611-ba06-51a72dcb039f︡{"stdout":"There are 80 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 116 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 348 admissible pairs"}︡{"stdout":"\nThere are 12 pairs of maximum order\nThere are 2 maximal groups up to conjugation"}︡{"stdout":"\n"}︡{"stdout":"true"}︡{"stdout":"\n"}︡{"done":true}︡
︠44920f09-a029-4fb8-aab2-77a7b9fb45d7︠
︡99e33ed7-3c9c-4fdd-a557-e446b854ecf0︡
︠6208506e-534e-4cbf-8249-be00c0b15a69︠
#running time < 1 min, corrected!
G = GL(2, Integers(10))
M = G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 6], [0, 1]],
                               [[1, 0], [0, 3]]]])
H_1=G.subgroup([G(x) for x in [[[-1, 0], [0, -1]],
                               [[1, 6], [0, 1]],
                               [[1, 0], [0, 3]],[[1, 5], [5, 6]]]])
L1=Admissible_Subgroups(10,M)
G.gap().IsConjugate(H_1.gap(),L1[0].gap())
︡2b5dc275-9613-417e-be53-07a78346d13e︡{"stdout":"There are 62 elements of order 3"}︡{"stdout":"\nThere are 0 elements of order 9"}︡{"stdout":"\nThere are 18 conjugacy classes of subgroups"}︡{"stdout":"\nThere are 36 admissible pairs"}︡{"stdout":"\nThere are 2 pairs of maximum order\nThere are 1 maximal groups up to conjugation"}︡{"stdout":"\n"}︡{"stdout":"true\n"}︡{"done":true}︡
︠268921aa-0ccc-4b96-b4b0-a0f4e95a57e6︠









