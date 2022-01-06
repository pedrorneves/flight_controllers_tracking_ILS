%Gulf-V - Controlo de Atitude
q = diag([1/(umax*umax) 1/(wmax*wmax) 1/(qmax*qmax) 1/(ttmax*ttmax)]);
r = diag([1/(demax*demax) 1/(dtmax*dtmax)]);
q, r

k_lqr=lqr(a,b,q,r);
k_lqr

af=a-(b*k_lqr);
damp(af);

C=[1 0 0 0; 0 0 0 1];

G=-C*inv(a-b*k_lqr)*b;
F = inv(G);
G, F