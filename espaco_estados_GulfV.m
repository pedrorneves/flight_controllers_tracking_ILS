% Gulf-V - Anel Aberto
a=[
xu xw -w0 -g*cos(tt0);
zu_ zw_ zq_ ztt_;
mu_ mw_ mq_ mtt_;
0 0 1 0];


b=[
xde xdt;
zde_ zdt;
mde_ mdt;
0 0];

c = eye (4);
d = 0;
damp (a);
a,b