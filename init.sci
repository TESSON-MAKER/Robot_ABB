//init.sci

exec('MGD.sci');

/***********************Matrices rotation*****************************/
print(%io(2),'Matrices de rotations');

R01 = T01(1:3, 1:3);  // R01
R12 = T12(1:3, 1:3);  // R12
R23 = T23(1:3, 1:3);  // R23
R3E = T3E(1:3, 1:3);  // R3E


// Matrices transposées
print(%io(2),'Matrices de rotations transposées');

R10 = R01';  // R10 = R01'
R21 = R12';  // R21 = R12'
R32 = R23';  // R32 = R23'
RE3 = R3E';  // RE3 = R3E'

/***********************Axes articulaires*****************************/

print(%io(2),'axes articulaires');

a11 = [0; 0; 1];
a22 = [0; 1; 0];
a33 = [0; 1; 0];

// initialisations de la base (fixe)
w0=[0;0;0];
w1=[];
w2=[];
w3=[];

dw0=[0;0;0];
dw1=[];
dw2=[];
dw3=[];

v0=[0;0;0];

dv0=[0;0;0];
dv1=[];
dv2=[];
dv3=[];

dvg0=[0;0;0];


