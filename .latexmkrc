# Use of glossaries, extra indexes, epstopdf, and other images conversions
# Thanks to Herb Schulz

#$out_dir='tmp';
#$out_dir='tmp';
#
#$pdflatex = 'pdflatex %O %S';
$pdf_mode = "1";
$out_dir = "tmp";
$pdflatex = 'pdflatex %O %S';
#$pdflatex .= '&& cp %D %R.pdf';

#$pdflatex .= "&& pdfsizeopt --use-pngout=true --use-jbig2=true --use-multivalent=false --do-unify-fonts=false %D &> ./tmp/pdfsizeOpt.log";
#$pdflatex .= "&& mv tmp/%B.pso.pdf %B.pdf";
$pdflatex .= "&& ln -v tmp/%B.pdf %B.pdf -f";

#$pdflatex .= ' && cp -v %Z/%D %D';
#$latex.= ' 
