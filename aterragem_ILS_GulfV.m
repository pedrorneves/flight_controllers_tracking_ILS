%Gulf-V --> Aterragem com ILS (adição de um 5º estado, a altitude)
ah=[
xu xw -w0 -g*cos(tt0) 0;
zu_ zw_ zq_ ztt_ 0;
mu_ mw_ mq_ mtt_ 0;
0 0 1 0 0;
0 -1 0 u0 0];

bh=[
xde xdt;
zde_ zdt;
mde_ mdt;
0 0;
0 0];
ah, bh

ch=eye(5);
dh=zeros(5,2);

qh = diag([1/(umax*umax) 1/(wmax*wmax) 1/(qmax*qmax) 1/(ttmax*ttmax) 1/(hmax*hmax)]);
rh= diag([1/(demax*demax) 1/(dtmax*dtmax)]);
qh, rh

kh_lqr=lqr(ah,bh,qh,rh);
kh_lqr

afh=ah-(bh*kh_lqr);
damp(afh);

Ch=[1 0 0 0 0; 0 0 0 0 1];

Gh=-Ch*inv(ah-bh*kh_lqr)*bh;
Fh=inv(Gh);
Gh, Fh