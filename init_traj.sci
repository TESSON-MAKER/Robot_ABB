// TP_RB2_DYN
// OC octobre 2007
//


T1=[];
T2=[];
T3=[];

dT1=[];
dT2=[];
dT3=[];

ddT1=[];
ddT2=[];
ddT3=[];

// trajectoires articulaires en rad rad/s et rad/s2

for t=0:dt:1 

    q(1)=-%pi+(3*t^2-2*t^3)*2*%pi;

    q(2)=-(%pi/2)+(3*t^2-2*t^3)*(200*%pi/180);

    q(3)=-(230*%pi/180)+(3*t^2-2*t^3)*(280*%pi/180);

    dq(1)=6*t*(1-t)*(2*%pi);
    dq(2)=6*t*(1-t)*(200*%pi/180);
    dq(3)=6*t*(1-t)*(280*%pi/180);

    ddq(1)=6*(1-2*t)*(2*%pi);
    ddq(2)=6*(1-2*t)*(200*%pi/180);
    ddq(3)=6*(1-2*t)*(280*%pi/180);
    
    T1=[T1;q(1)];
    T2=[T2;q(2)];
    T3=[T3;q(3)];
    
    dT1=[dT1;dq(1)];
    dT2=[dT2;dq(2)];
    dT3=[dT3;dq(3)];
    
    ddT1=[ddT1;ddq(1)];
    ddT2=[ddT2;ddq(2)];
    ddT3=[ddT3;ddq(3)];
   
end

t=0:dt:1;

/////////////////////////////////////////////
////// Angles, Vitesses, Acceleration ///////
/////////////////////////////////////////////

// Affichage Angle
scf(1); clf();
subplot(311);
  plot2d(t,T1*(180/%pi),style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : T1 en fonction de t','t(s)','T1 (deg)');
  xgrid();
subplot(312);
  plot2d(t,T2*(180/%pi),style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : T2 en fonction de t','t(s)','T2 (deg)');
  xgrid();
subplot(313);
  plot2d(t,T3*(180/%pi),style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : T3 en fonction de t','t(s)','T3 (deg)');
  xgrid();

// Affichage Vitesse
scf(2); clf();
subplot(311);
  plot2d(t,dT1,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : dT1 en fonction de t','t(s)','dT1 (rad/s)');
  xgrid();
subplot(312);
  plot2d(t,dT2,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : dT2 en fonction de t','t(s)','dT2 (rad/s)');
  xgrid();
subplot(313);
  plot2d(t,dT3,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : dT3 en fonction de t','t(s)','dT3 (rad/s)');
  xgrid();

// Affichage Acceleration
scf(3); clf();
subplot(311);
  plot2d(t,ddT1,style=2);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante X : ddT1 en fonction de t','t(s)','ddT1 (rad/s2)');
  xgrid();
subplot(312);
  plot2d(t,ddT2,style=3);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Y : ddT2 en fonction de t','t(s)','ddT2 (rad/s2)');
  xgrid();
subplot(313);
  plot2d(t,ddT3,style=5);
  a=get("current_axes");p=a.children.children;set(p,'thickness',2); 
  xtitle('composante Z : ddT3 en fonction de t','t(s)','ddT3 (rad/s2)');
  xgrid();
  

