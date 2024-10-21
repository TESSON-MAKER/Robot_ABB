// TP_MRB_DYN_ABB
// OC 2007-2011 ENIB
// Newton_Euler.sci

printf('\n\n TP_MRB_ABB_DYN Modélisation Dynamique du robot ABB porteur \n\n');

// Prod vect
function  z= f(u,v)//fonction produit vectoriel
  z=[0,-u(3),u(2);u(3),0,-u(1);-u(2),u(1),0]*v;
endfunction

dt=0.001; //echantillonnage temporel en seconde

input('\n Appuyez sur Enter pour continuer \n');
printf('\n Initialisation de la trajectoire \n');
exec('init_traj.sci');

input('\n Appuyez sur Enter pour continuer \n');
printf('\n Initialisation du robot \n');

exec('init_rob.sci');


// Initialisations des vecteurs 
W1x=[]; //majuscule = vecteur temporel
W1y=[];
W1z=[];

W2x=[];
W2y=[];
W2z=[];

W3x=[];
W3y=[];
W3z=[];

dW1x=[];
dW1y=[];
dW1z=[];

dW2x=[];
dW2y=[];
dW2z=[];

dW3x=[];
dW3y=[];
dW3z=[];

dVG1x=[];
dVG1y=[];
dVG1z=[];

dVG2x=[];
dVG2y=[];
dVG2z=[];

dVG3x=[];
dVG3y=[];
dVG3z=[];

F1x=[];
F1y=[];
F1z=[];

F2x=[];
F2y=[];
F2z=[];

F3x=[];
F3y=[];
F3z=[];

N1x=[];
N1y=[];
N1z=[];

N2x=[];
N2y=[];
N2z=[];

N3x=[];
N3y=[];
N3z=[];

f1x=[];
f1y=[];
f1z=[];

f2x=[];
f2y=[];
f2z=[];

f3x=[];
f3y=[];
f3z=[];

n1x=[];
n1y=[];
n1z=[];

n2x=[];
n2y=[];
n2z=[];

n3x=[];
n3y=[];
n3z=[];

Tau1=[];
Tau2=[];
Tau3=[];


// Recurrence

// trajectoires articulaires en rad rad/s et rad/s2


input('\n Appuyez sur Enter pour continuer \n');
printf('\n METHODE RECURSIVE DE NEWTON-EULER \n');

for i=1:size(t,2) //boucle temporelle t(i)
  printf('\r');
  printf('Calcul en cours... t(s)=%.3f                                                      ',t(i));
  
    theta(1)=T1(i);
    theta(2)=T2(i);
    theta(3)=T3(i);
  
    dtheta(1)=dT1(i);
    dtheta(2)=dT2(i);
    dtheta(3)=dT3(i);
  
    ddtheta(1)=ddT1(i);
    ddtheta(2)=ddT2(i);
    ddtheta(3)=ddT3(i);
    
    exec('init.sci');
    
    exec ('avant.sci');
    
    W1x=[W1x;w1(1)];
    W1y=[W1y;w1(2)];
    W1z=[W1z;w1(3)];

    W2x=[W2x;w2(1)];
    W2y=[W2y;w2(2)];
    W2z=[W2z;w2(3)];

    W3x=[W3x;w3(1)];
    W3y=[W3y;w3(2)];
    W3z=[W3z;w3(3)];

    dW1x=[dW1x;dw1(1)];
    dW1y=[dW1y;dw1(2)];
    dW1z=[dW1z;dw1(3)];

    dW2x=[dW2x;dw2(1)];
    dW2y=[dW2y;dw2(2)];
    dW2z=[dW2z;dw2(3)];

    dW3x=[dW3x;dw3(1)];
    dW3y=[dW3y;dw3(2)];
    dW3z=[dW3z;dw3(3)];
    
    dVG1x=[dVG1x;dvg1(1)];
    dVG2x=[dVG2x;dvg2(1)];
    dVG3x=[dVG3x;dvg3(1)];
    
    dVG1y=[dVG1y;dvg1(2)];
    dVG2y=[dVG2y;dvg2(2)];
    dVG3y=[dVG3y;dvg3(2)];
    
    dVG1z=[dVG1z;dvg1(3)];
    dVG2z=[dVG2z;dvg2(3)];
    dVG3z=[dVG3z;dvg3(3)];
    
    F1x=[F1x;F1(1)];
    F1y=[F1y;F1(2)];
    F1z=[F1z;F1(3)];

    F2x=[F2x;F2(1)];
    F2y=[F2y;F2(2)];
    F2z=[F2z;F2(3)];
    
    F3x=[F3x;F3(1)];
    F3y=[F3y;F3(2)];
    F3z=[F3z;F3(3)];
    
    N1x=[N1x;N1(1)];
    N1y=[N1y;N1(2)];
    N1z=[N1z;N1(3)];

    N2x=[N2x;N2(1)];
    N2y=[N2y;N2(2)];
    N2z=[N2z;N2(3)];
    
    N3x=[N3x;N3(1)];
    N3y=[N3y;N3(2)];
    N3z=[N3z;N3(3)];
    
    exec ('arriere.sci');
    
    f1x=[f1x;f1(1)];
    f1y=[f1y;f1(2)];
    f1z=[f1z;f1(3)];

    f2x=[f2x;f2(1)];
    f2y=[f2y;f2(2)];
    f2z=[f2z;f2(3)];
    
    f3x=[f3x;f3(1)];
    f3y=[f3y;f3(2)];
    f3z=[f3z;f3(3)];

    n1x=[n1x;n1(1)];
    n1y=[n1y;n1(2)];
    n1z=[n1z;n1(3)];

    n2x=[n2x;n2(1)];
    n2y=[n2y;n2(2)];
    n2z=[n2z;n2(3)];
    
    n3x=[n3x;n3(1)];
    n3y=[n3y;n3(2)];
    n3z=[n3z;n3(3)];
    
    exec ('efforts.sci');
    
    Tau1=[Tau1;tau1];
    Tau2=[Tau2;tau2];
    Tau3=[Tau3;tau3];

  
  
end

printf('\n Calculs récursifs terminés \n');

input('\n Appuyez sur Enter pour continuer \n');
printf('\n Affichage en cours...\n');

// Calcul des courbes analytiques

for i=1:size(t,2)
  
W1xA(i)=0;
W1yA(i)=0;
W1zA(i)=dT1(i);

W2xA(i)=-dT1(i)*sin(T2(i));
W2yA(i)=dT2(i);
W2zA(i)=dT1(i)*cos(T2(i));

W3xA(i)=-dT1(i)*sin(T2(i)+T3(i));
W3yA(i)=dT2(i)+dT3(i);
W3zA(i)=dT1(i)*cos(T2(i)+T3(i));

// AJOUTER LE CODE POUR LES FORMULES ANALYTIQUES
// DE dW ET dVG POUR CHAQUE SEGMENT SELON CE MODELE
// IMPLEMENTER LES VECTEURS DANS L'AFFICHAGE EGALEMENT

/******DW analytique*********/
//1w1point
dW1xA(i)=0;
dW1yA(i)=0;
dW1zA(i)=ddT1(i);

//2w2point
dW2xA(i)=-dT1(i)*dT2(i)*cos(T2(i))-ddT1(i)*sin(T2(i));
dW2yA(i)=ddT2(i);
dW2zA(i)=-dT1(i)*dT2(i)*sin(T2(i))+ddT1(i)*cos(T2(i));

//3w3point
dW3xA(i)=cos(T3(i)) * (-sin(T2(i)) * ddT1(i) - dT1(i) * cos(T2(i)) * dT2(i)) - sin(T3(i)) * (cos(T2(i)) * ddT1(i) - dT1(i) * sin(T2(i)) * dT2(i)) - (-sin(T3(i)) * dT1(i) * sin(T2(i)) + cos(T3(i)) * dT1(i) * cos(T2(i))) * dT3(i);
dW3yA(i)=ddT2(i)+ddT3(i);
dW3zA(i)=sin(T3(i)) * (-sin(T2(i)) * ddT1(i) - dT1(i) * cos(T2(i)) * dT2(i)) + cos(T3(i)) * (cos(T2(i)) * ddT1(i) - dT1(i) * sin(T2(i)) * dT2(i)) + (-cos(T3(i)) * dT1(i) * sin(T2(i)) - sin(T3(i)) * dT1(i) * cos(T2(i))) * dT3(i);

/******DVG analytique*********/
//1vG1point
dVG1xA(i) = -(l2/2)*dT1(i)^2;
dVG1yA(i) = (l2/2)*ddT1(i);
dVG1zA(i) = 0;

//2vG2point
dVG2xA(i) = 1/2 * ddT2(i) * l3 - 1/2 * dT1(i)^2 * cos(T2(i)) * sin(T2(i)) * l3 - cos(T2(i)) * l2 * dT1(i)^2;
dVG2yA(i) = -(-1/2 * sin(T2(i)) * ddT1(i) - 1/2 * dT1(i) * cos(T2(i)) * dT2(i)) * l3 + 1/2 * dT1(i) * cos(T2(i)) * dT2(i) * l3 + ddT1(i) * l2;
dVG2zA(i) = -1/2 * dT1(i)^2 * sin(T2(i))^2 * l3 - 1/2 * dT2(i)^2 * l3 - sin(T2(i)) * l2 * dT1(i)^2;

//3vG3point
dVG3xA(i) = -1/2 * dT2(i)^2 * dT3(i)^2 * l4 - 1/2 * dT1(i)^2 * cos(T2(i) + T3(i))^2 * l4 + cos(T3(i)) * (-cos(T2(i)) * l2 * dT1(i)^2 + ddT2(i) * l3 - dT1(i)^2 * cos(T2(i)) * sin(T2(i)) * l3) - sin(T3(i)) * (-sin(T2(i)) * l2 * dT1(i)^2 - dT1(i)^2 * sin(T2(i))^2 * l3 - dT2(i)^2 * l3);
dVG3yA(i) = l2*ddT1(i) + l3*(dT1(i)*dT2(i)*(cos(T2(i))+cos(T2(i)-T3(i)))+ ddT1(i)*sin(T2(i)+T3(i))+ dT1(i)*dT3(i)*cos(T2(i)+T3(i)))-(l4/2)*(dT1(i)*(dT2(i)+dT3(i))*sin(T2(i)+T3(i))+ dT1(i)*dT2(i)*sin(T2(i)+T3(i))+ ddT1(i)*cos(T2(i)+T3(i))+ dT1(i)*dT3(i)*sin(T2(i)+T3(i)));
dVG3zA(i) = -(1/2 * ddT2(i) + 1/2 * ddT3(i)) * l4 - 1/2 * dT1(i)^2 * sin(T2(i) + T3(i)) * cos(T2(i) + T3(i)) * l4 + sin(T3(i)) * (-cos(T2(i)) * l2 * dT1(i)^2 + ddT2(i) * l3 - dT1(i)^2 * cos(T2(i)) * sin(T2(i)) * l3) + cos(T3(i)) * (-sin(T2(i)) * l2 * dT1(i)^2 - dT1(i)^2 * sin(T2(i))^2 * l3 - dT2(i)^2 * l3);

end

/////////////////////////////////////////////
////////////////////  W ///////////////////// 
/////////////////////////////////////////////

printf('\n Affichage des Vitesses angulaires (W)');

// Affichage W1
printf('\n Affichage de W1');
scf(4); clf();
subplot(311);
  plot(t,[W1x,W1xA],style=1);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : W1 en fonction de t','t(s)','w1x (rad/s)');
  xgrid();
subplot(312);
  plot(t,[W1y,W1yA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : W1 en fonction de t','t(s)','w1y (rad/s)');
  xgrid();
subplot(313);
  plot(t,[W1z,W1zA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : W1 en fonction de t','t(s)','w1z (rad/s)');
  xgrid();

// Affichage W2
printf('\n Affichage de W2');
scf(5); clf();
subplot(311);
  plot(t,[W2x,W2xA],style=1);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : W2 en fonction de t','t(s)','w2x (rad/s)');
  xgrid();
subplot(312);
  plot(t,[W2y,W2yA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : W2 en fonction de t','t(s)','w2y (rad/s)');
  xgrid();
subplot(313);
  plot(t,[W2z,W2zA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : W2 en fonction de t','t(s)','w2z (rad/s)');
  xgrid();

// Affichage W3
printf('\n Affichage de W3');
scf(6); clf();
subplot(311);
 plot(t,[W3x,W3xA],style=1);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : W3 en fonction de t','t(s)','w3x (rad/s)');
  xgrid();
subplot(312);
  plot(t,[W3y,W3yA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : W3 en fonction de t','t(s)','w3y (rad/s)');
  xgrid();
subplot(313);
  plot(t,[W3z,W3zA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : W3 en fonction de t','t(s)','w3z (rad/s)');
  xgrid();

/////////////////////////////////////////////
//////////////////// dW1 //////////////////// 
/////////////////////////////////////////////

printf('\n Affichage des Accélérations angulaires (dW)');


// Affichage dW1
printf('\n Affichage de dW1');
scf(7); clf();
subplot(311);
  plot(t,[dW1x,dW1xA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dW1 en fonction de t','t(s)','dw1x (rad/s2)');
  xgrid();
subplot(312);
  plot(t,[dW1y,dW1yA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dW1 en fonction de t','t(s)','dw1y (rad/s2)');
  xgrid();
subplot(313);
  plot(t,[dW1z,dW1zA],style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dW1 en fonction de t','t(s)','dw1z (rad/s2)');
  xgrid();

// Affichage dW2
printf('\n Affichage de dW2');
scf(8); clf();
subplot(311);
  plot(t,[dW2x,dW2xA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dW2 en fonction de t','t(s)','dw2x (rad/s2)');
  xgrid();
subplot(312);
  plot(t,[dW2y,dW2yA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dW2 en fonction de t','t(s)','dw2y (rad/s2)');
  xgrid();
subplot(313);
  plot(t,[dW2z,dW2zA],style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dW2 en fonction de t','t(s)','dw2z (rad/s2)');
  xgrid();

// Affichage dW3
printf('\n Affichage de dW3');
scf(9); clf();
subplot(311);
  plot(t,[dW3x,dW3xA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dW3 en fonction de t','t(s)','dw3x (rad/s2)');
  xgrid();
subplot(312);
  plot(t,[dW3y,dW3yA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dW3 en fonction de t','t(s)','dw3y (rad/s2)');
  xgrid();
subplot(313);
  plot(t,[dW3z,dW3zA],style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dW3 en fonction de t','t(s)','dw3z (rad/s2)');
  xgrid();
  
/////////////////////////////////////////////
//////////////////// dVG //////////////////// 
/////////////////////////////////////////////

printf('\n Affichage des vitesses des centres d''inertie (dVG)');

// Affichage dVG1
printf('\n Affichage de dVG1');
scf(10); clf();
subplot(311);
  plot(t,[dVG1x,dVG1xA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dVG1 en fonction de t','t(s)','dVG1x (m/s2)');
  xgrid();
subplot(312);
  plot(t,[dVG1y,dVG1yA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dVG1 en fonction de t','t(s)','dVG1y (m/s2)');
  xgrid();
subplot(313);
  plot(t,[dVG1z,dVG1zA],style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dVG1 en fonction de t','t(s)','dVG1z (m/s2)');
  xgrid();

// Affichage dVG2
printf('\n Affichage de dVG2');
scf(11); clf();
subplot(311);
  plot(t,[dVG2x,dVG2xA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dVG2 en fonction de t','t(s)','dVG2x (m/s2)');
  xgrid();
subplot(312);
  plot(t,[dVG2y,dVG2yA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dVG2 en fonction de t','t(s)','dVG2y (m/s2)');
  xgrid();
subplot(313);
  plot(t,[dVG2z,dVG2zA],style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dVG2 en fonction de t','t(s)','dVG2z (m/s2)');
  xgrid();

// Affichage dVG3
printf('\n Affichage de dVG3');
scf(12); clf();
subplot(311);
  plot(t,[dVG3x,dVG3xA],style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dVG3 en fonction de t','t(s)','dVG3x (m/s2)');
  xgrid();
subplot(312);
  plot(t,[dVG3y,dVG3yA],style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dVG3 en fonction de t','t(s)','dVG3y (m/s2)');
  xgrid();
subplot(313);
  plot(t,[dVG3z,dVG3zA],style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dVG3 en fonction de t','t(s)','dVG3z (m/s2)');
  xgrid();
  
/////////////////////////////////////////////
//////////////////// F //////////////////// 
/////////////////////////////////////////////

printf('\n Affichage des forces inertielles (F)');

// Affichage F1
printf('\n Affichage de F1');
scf(13); clf();
subplot(311);
  plot2d(t,F1x,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : F1 en fonction de t','t(s)','F1x (N)');
  xgrid();
subplot(312);
  plot2d(t,F1y,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : F1 en fonction de t','t(s)','F1y (N)');
  xgrid();
subplot(313);
  plot2d(t,F1z,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : F1 en fonction de t','t(s)','F1z (N)');
  xgrid();

// Affichage F2
printf('\n Affichage de F2');
scf(14); clf();
subplot(311);
  plot2d(t,F2x,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : F2 en fonction de t','t(s)','F2x (N)');
  xgrid();
subplot(312);
  plot2d(t,F2y,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : F2 en fonction de t','t(s)','F2y (N)');
  xgrid();
subplot(313);
  plot2d(t,F2z,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : F2 en fonction de t','t(s)','F2z (N)');
  xgrid();

// Affichage F3
printf('\n Affichage de F3');
scf(15); clf();
subplot(311);
  plot2d(t,F3x,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : F3 en fonction de t','t(s)','F3x (N)');
  xgrid();
subplot(312);
  plot2d(t,F3y,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : F3 en fonction de t','t(s)','F3y (N)');
  xgrid();
subplot(313);
  plot2d(t,F3z,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : F3 en fonction de t','t(s)','F3z (N)');
  xgrid();
  
/////////////////////////////////////////////
//////////////////// N //////////////////// 
/////////////////////////////////////////////

printf('\n Affichage des moments inertiels (N)');

// Affichage N1
printf('\n Affichage de N1');
scf(16); clf();
subplot(311);
  plot2d(t,N1x,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : N1 en Nonction de t','t(s)','N1x (Nm)');
  xgrid();
subplot(312);
  plot2d(t,N1y,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : N1 en Nonction de t','t(s)','N1y (Nm)');
  xgrid();
subplot(313);
  plot2d(t,N1z,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : N1 en Nonction de t','t(s)','N1z (Nm)');
  xgrid();

// Affichage N2
printf('\n Affichage de N2');
scf(17); clf();
subplot(311);
  plot2d(t,N2x,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : N2 en Nonction de t','t(s)','N2x (Nm)');
  xgrid();
subplot(312);
  plot2d(t,N2y,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : N2 en Nonction de t','t(s)','N2y (Nm)');
  xgrid();
subplot(313);
  plot2d(t,N2z,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : N2 en Nonction de t','t(s)','N2z (Nm)');
  xgrid();

// Affichage N3
printf('\n Affichage de N3');
scf(18); clf();
subplot(311);
  plot2d(t,N3x,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : N3 en Nonction de t','t(s)','N3x (Nm)');
  xgrid();
subplot(312);
  plot2d(t,N3y,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : N3 en Nonction de t','t(s)','N3y (Nm)');
  xgrid();
subplot(313);
  plot2d(t,N3z,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : N3 en Nonction de t','t(s)','N3z (Nm)');
  xgrid();
   
/////////////////////////////////////////////
//////////////////// Tau //////////////////// 
/////////////////////////////////////////////

printf('\n Affichage des couples articulaires (Tau)');

// Affichage Tau
scf(19); clf();
subplot(311);
  plot(t,Tau1,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('Couple articulaire Tau1 en fonction de t','t (s)','Tau_x (N.m)');
  xgrid();
subplot(312);
  plot(t,Tau2,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('Couple articulaire Tau2 en fonction de t','t (s)','Tau_y (N.m)');
  xgrid();
subplot(313);
  plot(t,Tau3,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('Couple articulaire Tau3 en fonction de t','t (s)','Tau_z (N.m)');
  xgrid();
  
//input('Appuyez sur Enter pour continuer');
printf('\n Programme TP_MRB_ABB_DYN terminé');
