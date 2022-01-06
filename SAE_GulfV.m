% Gulf-V --> Sistema de Aumento de Estabilidade
%Diagrama de Root Locus para a realimentação do theta com a entrada delta_T
%rlocus (a, b(:,2), -c(4, :), -d);
%grid on

%Diagrama de Root Locus para a realimentação do q com a entrada delta_E
%rlocus (a, b(:,1), -c(3, :), -d);
%grid on
kq_lgr = 14.8;
ktt_lgr = 1.34;
k_lgr=[
0 0 kq_lgr 0;
0 0 0 ktt_lgr];
af=a+(b*k_lgr);
damp(af);