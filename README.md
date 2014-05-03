Caronte--2D-
============

***Summary:

A function-tool written in R language, to create a (geometric morphometrics coordinates/landmarks in 2D) file to TNT format (.tnt) from a TPS file. 



*** The problem that caronte solves:

The program TNT implemented the use of landmark data in a phylogenetic framework. This software take the landmark (geometric morphometric) data in .tnt format. 
Most of the programs to digitize 2D and 3D landmarks, even R packages to digitize (e.i. 'shapes' or 'geomorph'),
give an output of the digitized data in TPS format (.tps). Caronte can convert landmark data in TPS format, so TNT can use the data in a cladistic (parsimony) context. 



***About Caronte:

Caronte, is a very useful and simple function to convert (geometric morphometrics coordinates in 2D) file in TPS format, to TNT format (http://www.zmuc.dk/public/phylogeny/tnt/). Caronte was written in R language (http://www.r-project.org/) by Ambrosio Torres (Laboratorio de Sistemática & Biogeografía, Universidad Industrial
de Santander, Bucaramanga, Colombia). The function depends on 'geomorph' (Geometric morphometric analyses of 2d/3d landmark data) package of R written by Dean Adams, Erik Otarola-Castillo, Emma Sherra (http://cran.r-project.org/web/packages/geomorph/index.html). Also you need to have R (≥ 2.10) instaled in your computer.
(AS SOON AS POSSIBLE I WILL EXTEND THIS FUNCTION TO 3D DATA)

License of the function: GPL (>= 2)

Repository: https://github.com/atorresgalvis/Caronte--2D-

Built: R 3.1.0; x86_64-pc-linux-gnu; distri. Ubuntu 12.04

The name of the function: is based on Greek mythology, especifically about Charon or Kharon (Caronte in Spanish), who
is the ferryman of Hades who carries souls of the newly deceased across the rivers Styx and Acheron that divided the world of the living from the world of the dead. http://en.wikipedia.org/wiki/Charon_(mythology)



***About the use of Caronte function:

YOU CAN DOWNLOAD THE CODE/FUNCTION HERE: https://github.com/atorresgalvis/Caronte--2D-/blob/master/caronte.R.
OR CHOOSING THE FILE "caronte.R" IN THE MENU OF THE PROJECT.
once you have the file "caronte.R" only load the file in R or RStudio, typing: 

source('~/Desktop/my_folder/caronte.R')


**Fuction:
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

The function will return a file called "data_to_tnt.tnt" in TNT format.


Here you have some examples about how to use caronte function in Rconsole or RStudio:

caronte("data") ## if you don't specify algn and w_algn_tps, the values will be taken by default

caronte("data", algn=FALSE, w_algn_tps =TRUE)

caronte("data", algn=T)

caronte("data", w_algn=T)

 
There is an example data, called "aves_birds.tps" that you can use to try the function and see some results.
There is also an output data, called "aves_birds.tnt" from the original data "aves_birds.tps".
Finally there is an output of aligned data, called "aves_birds_algn.tps" from the original data.


***About Phylogenetic morphometrics:

In 2010, Santiago Catalano, Pablo Goloboff and Norberto Giannini, implemented the use of landmark data in a phylogenetic framework. The approach is based on finding, for each of the landmark points, the ancestral positions that minimize the distance between the ancestor/descendant points along the tree. Doing so amounts to maximizing the degree to which similar positions of the landmarks in different taxa can be accounted for by common ancestry, i.e. parsimony. (http://onlinelibrary.wiley.com/doi/10.1111/j.1096-0031.2010.00302.x/abstract) 
The algorithms for landmark optimization under parsimony are described in (Goloboff & Catalano, 2011) and the method is based on a first approximation using grids, and subsequent iterative refinement of the initial point estimates.
(http://onlinelibrary.wiley.com/doi/10.1111/j.1096-0031.2010.00318.x/abstract) This algorithms are implemented in the program TNT (Tree Analysis using New Technologies; Goloboff et al. 2003, 2008), (http://www.zmuc.dk/public/phylogeny/tnt/).

Recently, Catalano & Goloboff (2012) presented a method that merges both steps, map and align, into a single procedure that (for the given tree) produces a multiple alignment and ancestral assignments such that the sum of the Euclidean distances between the corresponding landmarks along tree nodes is minimized. (http://sysbio.oxfordjournals.org/content/61/3/392.abstract)
Finally, they implemented tree searches using as imput geometrics morphometric information of landmarks, 
but for now this article is not published (personal communication).


***Contact : 

Finally, I hope that the function will be useful; any comments or improvements to make the function more efficient or better will be appreciated. 
best. (and sorry about my english, I'm not the best! :D)

email: atorresgalvis@gmail.com

blog (R para Chibchombianos): http://rchibchombia.blogspot.com/

lab: http://tux.uis.edu.co/labsist/lsb.html

