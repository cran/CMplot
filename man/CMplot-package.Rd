\name{CMplot-package}
\alias{CMplot-package}
\alias{CMplot}
\docType{package}
\title{
Circle Manhattan Plot 
}
\description{
To visualize the results of Genome-Wide Association Study, Manhattan plot was born. However, it will take much time to draw an elaborate one. Here, this package gives a function named "CMplot" can easily solve the problem. Inputting the results of GWAS and adjusting certain parameters, users will obtain the desired Manhattan plot. Also, a circle Manhattan plot is first put forward, which demonstrates multiple traits in one circle plot. A more visualized figure can spare the length of a paper and lift the paper to a higher level.
}
\usage{
CMplot(Pmap,col,pch,band,cir.band,H,out,cex,r,outward,line,amplify,cir.labels,amplify.col)
}
\arguments{

  \item{Pmap}{
a dataframe, at least four columns. The first column is the name of SNP, the second column is the chromosome of SNP, the third column is the position of SNP, and the remaining columns are the P-value of each trait(Note:each trait a column)
}
  \item{col}{
a vector, the colour for each chromosome, the colours are not fixed, one, two, three or more colours can be used, if the length of the col is shorter than the length the chromosome, then colours will be applied circularly.the default: col=c("red", "black", "green", "blue", "orange")
}
  \item{pch}{
a number, the type for the points, is the same with "pch" in <plot>
}
  \item{band}{
a number, the space between chromosomes, the default is 1(if the band is 0, then there would be no space between chromosome)
}
  \item{cir.band}{
a number, the space between circles, the default is 1
}
  \item{H}{
a number, the height for each circle, each circle a trait, the default is 1
}
  \item{out}{
a character, only "c" or "m" or "b" can be used. if plottype="c",only circle-Manhattan plot will be plotted; if plottype="m",only Manhattan plot will be plotted; if plottype="b",both circle-Manhattan and Manhattan plots will be plotted;
}
  \item{cex}{
a vector, the size for the points, is the same with "size" in <plot>, and the first number controls the size of points in circle plot(the default is 0.5), the second number controls the size of points in Manhattan plot(the default is 1)
}
  \item{r}{
a number, the radius for the circle(the inside radius), the default is 1
}
  \item{outward}{
logical, if outward=TRUE,then all points will be plotted from inside to outside.
}
  \item{line}{
logical, CMplot can add two significant lines: significant1=-log10(1/makers), significant2=-log10(0.01/makers). if siglines=T,then two linse will be added to the plot.the default: amplify=TRUE
}
  \item{amplify}{
logical, CMplot can amplify the significant points, if amplify=T, then the points greater than significant1 will be 1.5 times bigger than normal, the default: amplify=TRUE
}
  \item{cir.labels}{
logical, whether to add the name of chromosome to the circle plot("S" means sex chromosome), the default: cir.labels=TRUE
}
  \item{amplify.col}{
a vector, the color for the points greater than significant1, the first colour controls the points which greater than significant1 and smaller than significant2, the second colour controls the points which greater than significant2,the default: amplify.col=c("red","green").
}

NOTE: \cr
1: In the data "Pmap", both autosome and heterosome are needed! \cr
2: only when the amplify=TRUE,then the parameter amplify.col=c("red","green") will be efficacious. \cr
3: In the circle Manhattan plot, traits will be plotted from inside to outside,it means that the first trait occupies the innermost circle.
}
\details{
\tabular{ll}{
Package: \tab CMplot\cr
Type: \tab Package\cr
Version: \tab 1.0.1\cr
Date: \tab 2015-05-21\cr
License: \tab GPL(>=2)\cr
}
}
\author{
Li-Lin Yin \cr
Maintainer: Li-Lin Yin <ylilin@163.com>
}
\keyword{ package }
\examples{
#plot Manhattan only one trait with 20000 makers:
data(pig60K)                        
CMplot(pig60K[1:20000,c(1:4)],out="m")
#plot all traits:
################################################################################
#data(pig60K)                                                                  #         
#CMplot(pig60K,col=c("gray30","gray60"),r=0.5,out="c",outward=FALSE,line=FALSE)#
################################################################################
}
