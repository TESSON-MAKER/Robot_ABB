// TP_RB2_DYN
// OC octobre 2007


print(%io(2),'Paramètres géométriques (SI)');

a1=352; //longueur des bras en mm
a2=70 ;
a3=360 ;
a4=380 ;

print(%io(2),'Longueurs (m)');

l1=a1/1000 //longueur des bras en m
l2=a2/1000
l3=a3/1000
l4=a4/1000

print(%io(2),'Masses (kg)');

m1=10*l2
m2=10*l3
m3=10*l4

id=[1,0,0;0,1,0;0,0,1]; //matrice identité

print(%io(2),'Inerties (kg.m^2)');

I1=((m1*l2^2)/12)*id
I2=((m2*l3^2)/12)*id
I3=((m3*l4^2)/12)*id

P1=[0;0;l1]
P2=[l2;0;0]
P3=[0;0;l3]
P4=[l4;0;0]

PG1=P2/2
PG2=P3/2
PG3=P4/2
