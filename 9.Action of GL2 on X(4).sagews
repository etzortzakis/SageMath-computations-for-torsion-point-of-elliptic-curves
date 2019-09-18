︠d869e693-6b18-43c6-8021-a1ea0acae585s︠
Qi.<i> = QuadraticField(-1)
K.<s> = FunctionField(Qi)
E = EllipticCurve([0, -(s^4 + 6*s^2 + 1), 0, 4*s^2*(s^2 + 1)^2, 0])
P4 = E([2*(s^2 + 1), 2*(s^4 - 1)])
Q4 = E([2*s*(s^2 + 1), 2*i*s*(s - 1)^2*(s^2 + 1)])
2*Q4==E([0,0])
4*P4==E([0,1,0])


︡a4996739-4815-44a4-9142-eb2db3791e33︡{"stdout":"True\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠96048741-5001-4c41-a2c2-912cdae4e6b9︠
︡9ada51fc-44e3-490d-88eb-9de671d27795︡
︠c8db9c3a-9e0c-4ef7-8e20-bdca9e2d4086s︠
#corrected
def action(a,b,c,d):
    P_prime=a*P4+c*Q4;
    Q_prime=b*P4+d*Q4;
    R=2*Q_prime
    i_prime=i^(a*d-b*c)
    E_prime=E.change_weierstrass_model(1,R[0],0,R[1])
    P_dp=E_prime([(P_prime[0]-R[0]),(P_prime[1]-R[1])])
    Q_dp=E_prime([(Q_prime[0]-R[0]),(Q_prime[1]-R[1])])
    s_prime=Q_dp[0]/P_dp[0]
    
    print("s_prime is %s") %s_prime
    
    print("i_prime is %s")%i_prime
  
︡f4a3c66f-55ea-4436-a01d-8cd7f72f76a3︡{"done":true}︡
︠548c2322-6f79-4bfd-a0a3-14150e03f96ds︠
action(1,3,0,3)
︡26883b38-fd5d-46c4-93af-60f810ad30c5︡{"stdout":"s_prime is i*s\ni_prime is -i\n"}︡{"done":true}︡
︠7f17b696-2bd5-4a74-b981-9a9b73d6beefs︠
action(1,3,3,2)
︡66bf525a-97b9-441a-9694-914b1923ad91︡{"stdout":"s_prime is (s + i)/(-s + i)\ni_prime is i\n"}︡{"done":true}︡
︠0599112e-459c-40e4-8f53-3389fdbc32afs︠
action(2,1,1,1)
︡013f5745-ac8f-4558-97eb-36dfa3df6e2a︡{"stdout":"s_prime is (-2*i*s + 2*i)/(-2*s - 2)\ni_prime is i\n"}︡{"done":true}︡
︠1368ed56-9a78-4ab2-b9c9-25c6e14abf8as︠
action(1,2,0,1)
︡e3989438-ecbc-4966-b19d-077b309eb85d︡{"stdout":"s_prime is -s\ni_prime is i\n"}︡{"done":true}︡
︠f413c52f-655a-4418-aac4-19ff842b6e69s︠
action(1,0,0,-1)
︡02e9329f-246b-4c32-8921-f07b0fa8e9a5︡{"stdout":"s_prime is s\ni_prime is -i\n"}︡{"done":true}︡
︠9ab5f8ef-0042-4dc4-a1fe-a013b70f82a6︠
︡312a46bb-fe9f-45d8-ab11-86b4386c829a︡
︠c8ff0baa-edbc-42ab-9ed6-7b068d6f44a2︠
%Pari
s;u;
A=s+((s + i)/(-s + i))+((-i*s + i)/(-s - 1));

G = t-(i+1)*s;


print(A%G);
︡5ac10e4e-0ae6-4aed-afb8-c98e79bb4f97︡{"stdout":"((-i^5 + (t - 2)*i^4 + 5*t*i^3 + (8*t + 2)*i^2 + (5*t + 1)*i + (-t^3 + t))/(i^4 + (t + 3)*i^3 + (t + 3)*i^2 + (-t^2 - t + 1)*i + (-t^2 - t)))\n"}︡{"done":true}︡
︠9fb20733-0b01-4e61-a40e-0d56c2235a93s︠
t=var('t')
B=(-i^5 + (t - 2)*i^4 + 5*t*i^3 + (8*t + 2)*i^2 + (5*t + 1)*i + (-t^3 + t))/(i^4 + (t + 3)*i^3 + (t + 3)*i^2 + (-t^2 - t + 1)*i + (-t^2 - t))
B.denominator()/(1+i)
B.numerator()
︡fd67ad62-ff6e-4876-895b-187e538c0cbc︡{"stdout":"t^2 + 2*t + 2\n"}︡{"stdout":"t^3 + 6*t + 4\n"}︡{"done":true}︡
︠29f0d24f-98f0-497c-a1c6-122de16b7738︠









