Caronte--2D-
============

***Summary:

A function-tool written in R language, to create a (geometric morphometrics coordinates in 2D) file to TNT format
(.tnt) from a TPS file. 


***About Caronte:

Caronte, is a very useful and simple function to convert (geometric morphometrics coordinates in 2D) file in TPS format, to TNT format (http://www.zmuc.dk/public/phylogeny/tnt/). Caronte was written in R language (http://www.r-project.org/) by Ambrosio Torres (Laboratorio de Sistemática & Biogeografía, Universidad Industrial
de Santander, Bucaramanga, Colombia). The function depends on 'geomorph' (Geometric morphometric analyses of 2d/3d landmark data) package of R written by Dean Adams, Erik Otarola-Castillo, Emma Sherra (http://cran.r-project.org/web/packages/geomorph/index.html). Also you need to have R (≥ 2.10) instaled in your computer.

License of the function: GPL (>= 2)

Repository: https://github.com/atorresgalvis/Caronte--2D-

Built: R 3.1.0; x86_64-pc-linux-gnu; distri. Ubuntu 12.04

The name of the function: is based on Greek mythology, especifically about Charon or Kharon (Caronte in Spanish), who
is the ferryman of Hades who carries souls of the newly deceased across the rivers Styx and Acheron that divided the world of the living from the world of the dead. http://en.wikipedia.org/wiki/Charon_(mythology)



***About the use of Caronte function:

caronte(x, algn = TRUE, w_algn_tps = FALSE) 

caronte function take three arguments that user can manipulate: 
x is the name of the tps file without the .tps (for 
example, if your tps file is called "datos.tps" you have to put only "datos". 

algn is an argument to align your data, if you choose TRUE or T, the function calls "gpagen" function from the package "geomorph", this function  performs Generalized Procrustes analysis of two- or three-dimensional landmark data that can include both fixed landmarks and sliding semilandmarks.
If you choose FALSE or F, means that you don't want to align your data or maybe your data was already aligned.
algn is by default TRUE

w_algn_tps is an argument to write your aligned data (obviusly in the case that you choose aligned your data: algn = T), so, if you choose w_algn_tps = TRUE or T, caronte function calls "writeland.tps" function from the package "geomorph", this function writes the new aligned data to a file called "aligned_data.tps" in your working directory.
If you choose FALSE or F, means that you don want to write your aligned data in a different file from the original.
w_algn_tps  is by default FALSE


Here you have some examples about how to use caronte function in Rconsole or RStudio:

caronte("data") ## if you don't specify algn and w_algn_tps, the values will be taken by default

caronte("data", algn=FALSE, w_algn_tps =TRUE)

caronte("data", algn=T)

caronte("data", w_algn=T)


***About Phylogenetic morphometrics:
