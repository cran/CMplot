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
	  band = 1, cir.band = 1, H = 1, ylim = NULL, cex.axis = 1, output = "b",
	  multracks = FALSE, cex = c(0.5, 1), r = 1, xlab = "Chromosome", 
	  ylab = expression(-log[10](italic(p))), outward = TRUE, threshold = 0.01,
	  threshold.col="red", amplify = TRUE, signal.cex = 1.5, signal.pch = 19,
	  signal.col="red", cir.chr = TRUE, chr.band = 1, chr.col = NULL, 
	  cir.labels = TRUE, plot0 = FALSE, fill.output=TRUE, fill = "jpg", dpi = 300)
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
  \item{ylim}{
a vector, the range of Y-axis when plotting, is the same with "ylim" in <plot>
}
  \item{cex.axis}{
a number, controls the size of labels of X-axis 
}
  \item{output}{
a character, only "c" or "m" or "b" can be used. if plottype="c",only circle-Manhattan plot will be plotted; if plottype="m",only Manhattan plot will be plotted; if plottype="b",both circle-Manhattan and Manhattan plots will be plotted;
}
  \item{multracks}{
a logical,if multracks=FALSE, plotting rectangular Manhattan plot on only one track, if TRUE,it will make multiple tracks for the rectangular one
}
  \item{cex}{
a vector, the size for the points, is the same with "size" in <plot>, and the first number controls the size of points in circle plot(the default is 0.5), the second number controls the size of points in Manhattan plot(the default is 1)
}
  \item{r}{
a number, the radius for the circle(the inside radius), the default is 1
}
  \item{xlab}{
a character, the labels for x axis.
}
  \item{ylab}{
a character, the labels for y axis.
}
  \item{outward}{
logical, if outward=TRUE,then all points will be plotted from inside to outside.
}
  \item{threshold}{
a number, users can adjust the significant level they wanted, if threshold=0 or =NULL, then the threshold line will not be added,the default is 0.01
}
\item{threshold.col}{
a character, the colour for the line of threshold level
}
  \item{amplify}{
logical, CMplot can amplify the significant points, if amplify=T, then the points greater than significant level will be bigger than normal, the default: amplify=TRUE
}
\item{signal.cex}{
a number, if amplify=TRUE, users can choose the size of significant points bigger than threshold.
}
\item{signal.pch}{
a number, if amplify=TRUE, users can choose the shape of significant points bigger than threshold.
}
\item{signal.col}{
a character, if amplify=TRUE, users can choose the colour of significant points bigger than threshold.
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
 \item{plot0}{
logical, users can choose whether to plot the chromosome (written as 0) with no clear chr number in both Manhattan plot
}
 \item{fill.output}{
a logical, users can choose whether output the plot results
}
 \item{fill}{
a character, users can choose the different output type of plot, so for, "jpg","pdf","tiff" can be selected by users
}
  \item{dpi}{
a number, the picture element for .jpg and .tiff files
}
}
\details{
\tabular{ll}{
Package: \tab CMplot\cr
Type: \tab Package\cr
Version: \tab 3.0.3\cr
Date: \tab 2015-10-15\cr
License: \tab GPL(>=2)\cr
}
}
\author{
LiLin-Yin \cr
Maintainer: LiLin-Yin <ylilin@163.com>
}
\note{
1: In the data "Pmap", autosome and heterosome can both exist simultaneously, and heterosome can also be replaced by a number. \cr
2: only when the amplify=TRUE,then the parameter signal.cex, signal.pch, signal.col will be efficacious. \cr
3: In the circle Manhattan plot, traits will be plotted from inside to outside,it means that the first trait occupies the innermost circle. \cr
}
\examples{
#plot rectangular Manhattan only one trait with 20000 makers:
data(pig60K)                        
CMplot(pig60K[1:20000,c(1:4)],output="m",multracks=TRUE)
 
################################################################################
#plot circular Manhattan for all traits with all makers:                       #
################################################################################
#data(pig60K)                                                                  #         
#CMplot(pig60K,col=c("gray30","gray60"),r=0.5,output="c",outward=FALSE)        #
################################################################################
}
