//( debFon )
function y=score_de_Deux(p)
  y = 3*p^2 - 2*p^3
endfunction

function y=deux_d_affilee(p)
  q = 1-p
  y = ___
endfunction

function y=deux_d_avance(p)
  q = 1-p
  y = p^2 / (p^3+p^2*q+p*q^2+q^3)
endfunction
//( finFon )

scf(1)
clf()
//( debAff )
p = linspace(.5,1)
plot(p,score_de_Deux,'--')
plot(p,deux_d_affilee)
plot(p,deux_d_avance,':')
//( finAff )
f=gcf()
a=f.children
e=a.children
e.children.thickness=2
legend(["score = 2","deux d''affilée","deux d''avance"],2)
//edit("pdf")

