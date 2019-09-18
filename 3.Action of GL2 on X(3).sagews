︠116c3a40-b48c-4d33-9a8e-90546ff26b2ds︠
K.<z> = CyclotomicField(3)
L.<t> = FunctionField(K)
E = EllipticCurve([t+2, 0, (t^2+t+1)/3, 0, 0])
P3 = E([0,0])
Q3 = E([-(t^2+t+1)/3, (t^2 + t + 1)*(t -z)/(3*(1-z))])
3*Q3==E([0,1,0])


︡e758cfd9-f8dc-4b64-b325-01ef8f039392︡{"stdout":"True\n"}︡{"done":true}︡
︠43d448c6-1df6-4759-8d24-52c847e69907︠
#corrected
def act(a,b,c,d):
    if a*d-b*c==0:
        print("determinant 0")
    else:
        
        P_p=a*P3+c*Q3
        Q_p=b*P3+d*Q3
        z_p=z^(a*d-b*c)
        Q_dp=[Q_p[0]-P_p[0],Q_p[1]-P_p[1]]
        F=E.change_weierstrass_model([1,P_p[0],0,P_p[1]])
        s=F.a4()/F.a3()
        G=F.change_weierstrass_model([1,0,s,0])
        Q_tp=[Q_dp[0],Q_dp[1]-s*Q_dp[0]]
        T=G(Q_tp)
        if 3*T==G([0,1,0]):
            
            a=Q_tp[1]/G.a3()
            t_p=z_p+a*(1-z_p)
            print("t_prime is %s") % t_p
       
            print("z_prime is %s") % z_p
        
︡4eebb31f-6fe3-4f9a-9319-dadf38bba373︡{"done":true}︡
︠af9e123c-59ef-4a45-af95-8cfe22b3a3cds︠
act(1,0,1,1)
︡f0d26de2-dff8-45d5-a631-b2ad805788d3︡{"stdout":"t_prime is z*t\nz_prime is z\n"}︡{"done":true}︡
︠c103ef7b-f03e-4290-8cfc-a4d130d20576s︠
act(1,0,0,-1)
︡9d7d3d61-4fe5-4e8a-9aed-539335346ee0︡{"stdout":"t_prime is t\nz_prime is -z - 1\n"}︡{"done":true}︡
︠0c5131d8-9ef1-428d-b055-0658d4ac60a7︠

︡2f6ef55f-c3ef-45f1-9155-f59d2dfe7899︡
︠aba73558-4698-40ca-81c3-656cc083ed86s︠
a=((-4/9*z - 11/9)*t + 4/9*z - 4/9)/((2/9*z + 1/9)*t + 1/9*z - 1/9)

b=((-1/3*z - 2)*t + 4/3*z)/((1/3*z + 1/3)*t - 1/3*z - 1/3)
c=a+b+t
27*c/27*(1/(z-1))
d=((z - 1)*t^2 + (-2*z - 1)*t + z + 2)
d*(z-1)/z
︡ffbd6242-03f1-4b47-a629-cb7fe88ef17d︡{"stdout":"(t^3 + 12*z*t^2 - 4)/((z - 1)*t^2 + (-2*z - 1)*t + z + 2)\n"}︡{"stdout":"-3*t^2 - 3*z*t + 3*z + 3\n"}︡{"done":true}︡
︠7ecbf74c-7515-4dd9-819d-0acb13228ed3s︠
f=(1/9*t^3 + 2/3*t + 2/9)/(1/9*t^2 + 1/9*t + 1/9);9*f/9
︡fd8a5f46-79f8-4d21-ba08-e2267944d0e1︡{"stdout":"(t^3 + 6*t + 2)/(t^2 + t + 1)\n"}︡{"done":true}︡
︠9704d7bf-b386-4568-8b8c-7ef88a0677e8︠









