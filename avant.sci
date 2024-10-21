/* Avant.sci */

//calcul des vitesses angulaires
w1 = R10*w0+ dtheta(1)*a11;
w2 = R21*w1+ dtheta(2)*a22;
w3 = R32*w2+ dtheta(3)*a33;

//Acceleration angulaire
dw1 = R10*dw0 + (f((R10*w0), dtheta(1)*a11) + ddtheta(1)*a11);
dw2 = R21*dw1 + (f((R21*w1), dtheta(2)*a22) + ddtheta(2)*a22);
dw3 = R32*dw2 + (f((R32*w2), dtheta(3)*a33) + ddtheta(3)*a33);

//Vitesse de Oi
v1 = R10*(v0 + f(w0, P1));
v2 = R21*(v1 + f(w1, P2));
v3 = R32*(v2 + f(w2, P3));

//Acceleration de Oi
dv1 = R10*(dv0 + f(dw1, P1) + f(w0, f(w0, P1)));
dv2 = R21*(dv1 + f(dw2, P2) + f(w1, f(w1, P2)));
dv3 = R32*(dv2 + f(dw3, P3) + f(w2, f(w2, P3)));

//DVG point
dvg1 = f(dw1, PG1) + f(w1, f(w1, PG1)) + dv1;
dvg2 = f(dw2, PG2) + f(w2, f(w2, PG2)) + dv2;
dvg3 = f(dw3, PG3) + f(w3, f(w2, PG3)) + dv3;

///efforts inertiels
//Forces inertielles
F1 = m1*dvg1;
F2 = m2*dvg2;
F3 = m3*dvg3;

//Moments inertiels
N1 = I1*dw1 + f(w1,(I1*w1));
N2 = I2*dw2 + f(w2,(I2*w2));
N3 = I3*dw3 + f(w3,(I3*w3));
 
