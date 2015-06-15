\name{CMplot-package}
\alias{CMplot-package}
\alias{CMplot}
\docType{package}
\title{
Circle Manhattan Plot 
}
\description{
 Manhattan plot, a type of scatter plot, was widely used to display the association results. However, it is usually time-consuming and laborious for a
 non-specialist user to write scripts and adjust parameters of an elaborate plot. Moreover, the ever-growing traits measured have necessitated the 
 integration of results from different Genome-wide association study researches. Circle Manhattan Plot is the first open R package that can lay out 
 Genome-wide association study P-value results in both traditional rectangular patterns and novel circular ones. United in only one bull's eye style 
 plot, association results from multiple traits can be compared interactively, thereby to reveal both similarities and differences between signals.
}
\usage{
CMplot(Pmap, col = c("red", "black", "green", "blue", "orange"), pch = 19,
	  band = 1, cir.band = 1, H = 1, out = "b", cex = c(0.5, 1), r = 1, 
	  outward = TRUE, line = TRUE, amplify = TRUE, cir.chr = TRUE, chr.band = 1, 
	  chr.col = NULL, cir.labels = TRUE, amplify.col = c("red", "green"))
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
  \item{cir.chr}{
logical, a boundary represents chromosome, the default is TRUE
}
  \item{chr.band}{
a number, the width for the boundary, if cir.chr=FALSE, then this parameter will be useless.
}
  \item{chr.col}{
a character, the colour for the boundary, only one colour is allowed, if chr.col=NULL, then the default colours are the same with the parameter "col".
}
  \item{cir.labels}{
logical, whether to add the name of chromosome to the circle plot("S" means sex chromosome), the default: cir.labels=TRUE
}
  \item{amplify.col}{
a vector, the color for the points greater than significant1, the first colour controls the points which greater than significant1 and smaller than significant2, the second colour controls the points which greater than significant2,the default: amplify.col=c("red","green").
}
}
\details{
\tabular{ll}{
Package: \tab CMplot\cr
Type: \tab Package\cr
Version: \tab 2.0.1\cr
Date: \tab 2015-06-015\cr
License: \tab GPL(>=2)\cr
}
}
\author{
LiLin-Yin \cr
Maintainer: LiLin-Yin <ylilin@163.com>
}
\note{
1: In the data "Pmap", autosome and heterosome can both exist simultaneously, and heterosome can also be replaced by a number. \cr
2: only when the amplify=TRUE,then the parameter amplify.col=c("red","green") will be efficacious. \cr
3: In the circle Manhattan plot, traits will be plotted from inside to outside,it means that the first trait occupies the innermost circle. \cr
4: When line=TRUE, if the points smaller than significant1 or significant2, then the significant line will not be added. 
}
\examples{
#plot rectangular Manhattan only one trait with 20000 makers:
data(pig60K)                        
CMplot(pig60K[1:20000,c(1:4)],out="m")
 
################################################################################
#plot circular Manhattan for all traits with all makers:                       #
################################################################################
#data(pig60K)                                                                  #         
#CMplot(pig60K,col=c("gray30","gray60"),r=0.5,out="c",outward=FALSE,line=FALSE)#
################################################################################
}
