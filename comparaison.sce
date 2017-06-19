function y=score_de_Deux(p)
  y = 3*p^2 - 2*p^3
endfunction
function y=deux_d_affilee(p)
  q = 1-p
  y = (1+q) * p^2 / (1-p*q)
endfunction
function y=deux_d_avance(p)
  q = 1-p
  y = p^2 / (p^3+p^2*q+p*q^2+q^3)
endfunction

scf(1)
clf()
p = linspace(.5,1)
//help plot
plot(p,score_de_Deux,'--')
plot(p,deux_d_affilee)
plot(p,deux_d_avance,':')
f=gcf()
a=f.children
e=a.children
e.children.thickness=2
legend(["score = 2","deux d''affilée","deux d''avance"],2)

function [] = pdf(nom)
  //xsave (nom+'.scg' , gcf ()) 
  xs2pdf(gcf(),sprintf(nom+".pdf"))
  unix("pdfcrop "+nom+".pdf")
  unix("mv "+nom+"-crop.pdf "+nom+".pdf")

  disp("\includegraphics[width=\columnwidth]{./"+nom+".pdf}")
  // \includegraphics[scale=.xx]{./croppee_hist}
endfunction

a=gca()
grilleColor=12
a.grid = [grilleColor,grilleColor]
//help gca
//getcolor()


pdf("comparaisonDesTroisGrille")
