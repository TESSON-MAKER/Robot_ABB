//arriere.sci

//Initialisation de la récursion arrière avec aucune force extérieure appliquée sur l'effecteur
f4 = [0;0;0];
f3 = [0;0;0];
f2 = [0;0;0];
f1 = [0;0;0];

n4 = [0;0;0];
n3 = [0;0;0];
n2 = [0;0;0];
n1 = [0;0;0];


//Force de liaison sur {i}
f3 = R3E * f4 + F3;
f2 = R23 * f3 + F2;
f1 = R12 * f2 + F1;

//Moments de liaison sur {i}
n3 = N3 + R3E * n4 + f(P4, f3);
n2 = N2 + R23 * n3 + f(P3, f2);
n1 = N1 + R12 * n2 + f(P2, f1);
