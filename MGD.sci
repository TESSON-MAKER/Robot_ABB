// MGD Robot ABB réduit aux 3 premiers segments (porteur)
// OC octobre 2007

T01=[cos(theta(1)),-sin(theta(1)),0,0;sin(theta(1)),cos(theta(1)),0,0;0,0,1,a1;0,0,0,1];
T12=[cos(theta(2)),0,sin(theta(2)),a2;0,1,0,0;-sin(theta(2)),0,cos(theta(2)),0;0,0,0,1];
T23=[cos(theta(3)),0,sin(theta(3)),0;0,1,0,0;-sin(theta(3)),0,cos(theta(3)),a3;0,0,0,1];
T3E=[1,0,0,a4;0,1,0,0;0,0,1,0;0,0,0,1];


T0E=T01*T12*T23*T3E;

x=T0E(1,4);
y=T0E(2,4);
z=T0E(3,4);


X0E=[x y z]';

R0E=T0E(1:3,1:3);

