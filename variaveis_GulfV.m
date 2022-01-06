% Gulf-V - movimento longitudinal --> variáveis (ponto de equilíbrio)
deg = pi /180; kn = 0.5144; g = 9.81;
h0 = 500; M = 0.16; 
aa0 = 7.17*deg; gg0 = 0*deg; u0 = 105.1*kn; flaps = 50*deg;
tt0 = gg0+aa0; th0 = 0.73; de0 = 0*deg; w0 = u0*aa0;

%Extremos permitidos para as entradas e saídas
umax = 3;%[m/s]
wmax = 0.2;%[m/s]
qmax = 8*deg; %[rad/s]
ttmax = 10*deg;%[rad]
hmax = 5;%[m]
demax = 10*deg;%[rad]
dtmax = 0.18;


%Derivadas de estabilidade (sem unidades ou em unidades SI)
xu = -0.0693;   xw = 0.1536;    zu = -0.3398;   zw = -0.4029;   
zwp = -0.0202;  zq = -2.9198;   mu = 0.0000;    mw = -0.0160;   
mq = -0.1907;   mwp = 0.0013;   ybb = -0.0382;  lbb = 0.6520;  
nbb = 0.3360;   yp = 0.0013;    lp = -0.5067;   np = 0.0233;
yr = 0.0132;    lr = -0.1212;   nr = -0.1212;   xde = 0.000;    
zde = 1.591;    mde = -0.113;   xdsp = -0.156;  zdsp = 0.293;  
mdsp = 0.010;   xdt = 5.272;    zdt = 0.000;    mdt = 0.008;
Lda = -0.946;   Nda = 0.048;    Ydr = -0.020;   Ldr = -0.040;  
Ndr = -0.156;

%Cálculo das novas derivadas de estabilidade (com til)
zu_ = zu/(1-zwp);
zw_ = zw/(1-zwp);
zq_ = (zq+u0)/(1-zwp);
ztt_ = (-g*sin(tt0))/(1-zwp);
zde_ = zde/(1-zwp);
mu_ = mu+((mwp*zu)/(1-zwp));
mw_ = mw+((mwp*zw)/(1-zwp));
mq_ = mq+((mwp*(zq+u0))/(1-zwp));
mtt_ = -(g*sin(tt0)*mwp)/(1-zwp);
mde_ = mde+((mwp*zde)/(1-zwp));


