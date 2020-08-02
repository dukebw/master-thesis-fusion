@default_files = ('thesis.tex');
$pdflatex = "xelatex %O %S";
$pdf_mode = 1;
$dvi_mode = $postscript_mode = 0;
$cleanup_includes_generated = 1;
$bibtex_use = 2;
@cus_dep_list = (@cus_dep_list, "nlo nls 0 makenomenclature");
sub makenomenclature {
   system("makeindex $_[0].nlo -s nomencl.ist -o $_[0].nls"); }
@generated_exts = (@generated_exts, 'nlo');
