\name{CMplot-package}
\alias{CMplot-package}
\alias{CMplot}
\docType{package}
\title{
Circle Manhattan Plot 
}
\description{
 Manhattan plot, a type of scatter plot, was widely used to display the association results. However, it is usually time-consuming and laborious for a non-specialist user to write scripts and adjust parameters of an elaborate plot. Moreover, the ever-growing traits measured have necessitated the 
 integration of results from different Genome-wide association study researches. Circle Manhattan Plot is the first open R package that can lay out Genome-wide association study P-value results in QQ-plot, both traditional rectangular patterns and novel circular ones. United in only one bull's eye style 
 plot, association results from multiple traits can be compared interactively, thereby to reveal both similarities and differences between signals.
 Additional functions include: highlight signals, a group of SNPs, chromosome visualization and candidate genes around SNPs.
 }
\usage{
CMplot(Pmap,col=c("#4197d8","#f8c120","#413496","#495226",
    "#d60b6f","#e66519","#d581b7","#83d3ad","#7c162c","#26755d"),
    bin.size=1e6,bin.breaks=NULL,LOG10=TRUE,pch=19,type="p",band=1,
    H=1.5,ylim=NULL,axis.cex=1,axis.lwd=1.5,lab.cex=1.5,lab.font=2,
    plot.type=c("m","c","q","d"),multracks=FALSE,
    multracks.xaxis=FALSE,multraits=FALSE,points.alpha=100L,r=0.3,
    cex=c(0.5,1,1),outward=FALSE,ylab=expression(-log[10](italic(p))), 
    ylab.pos=3,xticks.pos=1,mar=c(3,6,3,3),mar.between=0,threshold=NULL,
    threshold.col="red",threshold.lwd=1,threshold.lty=2,amplify=TRUE,
    signal.cex=1.5,signal.pch=19,signal.col=NULL,signal.line=2,
    highlight=NULL,highlight.cex=1,highlight.pch=19,highlight.type="p",
    highlight.col="red",highlight.text=NULL,highlight.text.col="black",
    highlight.text.cex=1,highlight.text.font=3,chr.labels=NULL,
    chr.border=FALSE,chr.labels.angle=0,chr.den.col="black",
    chr.pos.max=FALSE,cir.band=1,cir.chr=TRUE,cir.chr.h=1.5,
    cir.axis=TRUE,cir.axis.col="black",cir.axis.grid=TRUE,conf.int=TRUE,
    conf.int.col=NULL,file.output=TRUE,file.name="",file=c("jpg","pdf",
    "tiff","png"),dpi=300,height=NULL,width=NULL,main="",main.cex=1.5,
    main.font=2,legend.ncol=NULL,legend.cex=1,
    legend.pos=c("left","middle","right"),box=FALSE,verbose=TRUE)
}
\arguments{
  \item{Pmap}{
a dataframe, the first column is the name of genomic markers, the second column is the chromosome, the third column is the physical position, and the remaining columns are the P-values of each trait.
}
  \item{col}{
a vector or a matrix, the color for chromosomes. If it is a vector, all traits use the same colors, it means that the same chromosome is drew in the same color across traits, and the length of colors are not fixed (1, 2, 3 or more colors can be used), if the length of the "col" is shorter than the number of chromosomes, then colors will be applied circularly. If "col" is a matrix, the number of row of which must be equal to the number of traits, the columns are the colors that users want to use for different traits, thus the chromosomes of each trait can be plotted in different number of colors, the missing value can be replaced by NA. For example: col=matrix(c("grey30","grey60",NA,"red","blue","green","orange",NA,NA),3,3,byrow=T).
}
  \item{bin.size}{
a integer, the size of bin in bp for marker density plot.
}
  \item{bin.breaks}{
a vector, set the breaks for the legend of density plot, e.g., seq(min, max, step), the windows in which the number of markers is out of the this range will be plotted in the same colors with the min or max value.
}
  \item{LOG10}{
logical, whether to change the p-value into log10(p-value) scale.
}
  \item{pch}{
a integer, the shape for the points, is the same with "pch" in <plot>.
}
  \item{type}{
a character, could be "p" (point), "l" (cross line), "h" (vertical lines) and so on, is the same with "type" in <plot>.
}
  \item{band}{
a number, the size of space between chromosomes, the default is 1 (if the band equals to 0, then there would be no space between chromosomes).
}
  \item{H}{
a number, the height for each circle, each circle represents a trait, the default is 1.
}
  \item{ylim}{
vector (c(min, max)) or list, CMplot will only plot the points among this interval, it can be vector or list, if it is a list, different traits can be assigned with different range at y-axis.
}
  \item{axis.cex}{
a number, controls the size of ticks labels of X/Y-axis and the ticks labels of axis for circle plot.
}
  \item{axis.lwd}{
a number, controls the thickness of X/Y-axis lines and the thickness of axis for circle plot.
}
  \item{lab.cex}{
a number, controls the size of labels of X/Y-axis and the labels of chromosomes for circle plot.
}
  \item{lab.font}{
a number, controls the font of labels of all axis.
}
  \item{plot.type}{
a character or vector, only "d", "c", "m", "q" can be used. if plot.type="d", SNP density will be plotted; if plot.type="c", only circle-Manhattan plot will be plotted; if plot.type="m",only Manhattan plot will be plotted; if plot.type="q",only Q-Q plot will be plotted; if plot.type=c("m","q"), Both Manhattan and Q-Q plots will be plotted.
}
  \item{multracks}{
a logical, if TRUE, all Manhattan plots will be drew in one file.
}
  \item{multracks.xaxis}{
a logical, if TRUE, all the traits will be added x-axis.
}
  \item{multraits}{
a logical, if TRUE, all traits will be plotted in one axis, and output one file.
}
  \item{points.alpha}{
a number, the transparency of point for multiple traits plot, ranges from '0' (fully transparent) to '255' (opaque).
}
  \item{r}{
a number, the radius for the circle (the inside radius), the default is 1.
}
  \item{cex}{
a number or a vector, the size for the points, is the same with "size" in <plot>, and if it is a vector, the first number controls the size of points in circle plot(the default is 0.5), the second number controls the size of points in Manhattan plot (the default is 1), the third number controls the size of points in Q-Q plot (the default is 1)
}
  \item{outward}{
logical, if TRUE, all points will be plotted from inside to outside for circular Manhattan plot.
}
  \item{ylab}{
a character, the labels for y axis.
}
  \item{ylab.pos}{
the distance between ylab and yaxis.
}
  \item{xticks.pos}{
the distance between labels of x ticks and x axis.
}
  \item{mar}{
the size of white gaps around the plot, 4 values should be provided, indicating the direction of bottom, left, up, and right.
}
  \item{mar.between}{
the distance between multiple plots for multiple tracks Manhattan plot.
}
  \item{threshold}{
a number or vector or list, the significant threshold. For example, the Bonfferoni adjustment method: threshold=0.01/nrow(Pmap), more than one significant line can be added on the plots; if it is a list, each trait can be assigned with different thresholds, if threshold=0 or NULL, then the threshold line will not be added.
}
  \item{threshold.col}{
a character or vector, the color for the line of threshold levels, it can also control the color of the diagonal line of QQplot.
}
  \item{threshold.lwd}{
a number or vector, the width for the line of threshold levels, it can also control the thickness of the diagonal line of QQplot.
}
  \item{threshold.lty}{
a number or vector, the type for the line of threshold levels, it can also control the type of the diagonal line of QQplot.
}
  \item{amplify}{
logical, CMplot can amplify the significant points, if TRUE, then the points bigger than the minimal significant level will be amplified, the default: amplify=TRUE.
}
  \item{signal.cex}{
a number, if amplify=TRUE, users can set the size of significant points.
}
  \item{signal.pch}{
a number, if amplify=TRUE, users can set the shape of significant points.
}
  \item{signal.col}{
a character, if amplify=TRUE, users can set the colour of significant points, if signal.col=NULL, then the colors of significant points will not be changed.
}
  \item{signal.line}{
a number, the thickness of the lines of significant SNPs cross the circle.
}
  \item{highlight}{
a vector or list, names of SNPs which need to be highlighted. vector for single trait and list for multiple traits.
}
  \item{highlight.cex}{
a vector or list, the size of points for SNPs which need to be highlighted.
}
  \item{highlight.pch}{
a vector or list, the pch of points for SNPs which need to be highlighted.
}
  \item{highlight.type}{
a vector or list, the type of points for SNPs which need to be highlighted.
}
  \item{highlight.col}{
a vector or list, the col of points for SNPs which need to be highlighted.
}
  \item{highlight.text}{
a vector or list, the text which would be added around the highlighted SNPs.
}
  \item{highlight.text.col}{
a vector or list, the color for added text.
}
  \item{highlight.text.cex}{
a value, the size for added text.
}
  \item{highlight.text.font}{
text font for the highlighted SNPs.
}
  \item{chr.labels}{
a vector, the labels for the chromosomes of density plot and Manhattan plot.
}
  \item{chr.border}{
a logical, whether to plot the dot line between chromosomes.
}
  \item{chr.labels.angle}{
a value, rotate tick labels of x-axis for Manhattan plot (-90 < chr.labels.angle < 90).
}
  \item{chr.pos.max}{
logical, whether the physical positions of each chromosome contain the maximum length of the chromosome.
}
  \item{chr.den.col}{
a character or vector or NULL, the colour for the SNP density. If the length of parameter 'chr.den.col' is bigger than 1, SNP density that counts the number of SNP within given size ('bin.size') will be plotted around the circle. If chr.den.col=NULL, the density bar will not be attached on the bottom of manhattan plot.
}
  \item{cir.band}{
a number, the space between circles, the default is 1.
}
  \item{cir.chr}{
logical, a boundary that represents chromosomes will be plotted on the periphery of a circle, the default is TRUE.
}
  \item{cir.chr.h}{
a number, the width for the boundary, if cir.chr=FALSE, then this parameter will be useless.
}
  \item{cir.axis}{
a logical, whether to add the axis of each circle.
}
  \item{cir.axis.col}{
a character, the color of the axis for circle.
}
  \item{cir.axis.grid}{
logical, whether to add axis grid line in circles.
}
 \item{conf.int}{
logical, whether to plot confidence interval on QQ-plot.
}
 \item{conf.int.col}{
character or vector, the color of confidence interval of QQplot.
}
 \item{file.output}{
a logical, users can choose whether to output the plot results.
}
 \item{file.name}{
a character or vector, the names of output files.
}
 \item{file}{
a character, users can choose the different output formats of plot, so for, "jpg", "pdf", "tiff", and "png" can be selected by users. The "png" format has a transparent background.
}
  \item{dpi}{
a number, the picture resolution for '.jpg', '.npg', and '.tiff' files. The default is 300.
}
  \item{height}{
the height of output files.
}
  \item{width}{
the width of output files.
}
  \item{main}{
character of vector, the title of the plot for manhattan plot and qqplot.
}
  \item{main.cex}{
size of title.
}
  \item{main.font}{
font of title.
}
 \item{legend.ncol}{
number of column for the legend of multiple traits manhattan plot.
}
 \item{legend.cex}{
set the size of the legend text of trait name.
}
 \item{legend.pos}{
control the legend position of trait name on the plot, three options "left", "middle", "right" are available.
}
 \item{box}{
logical, this function draws a box around the current plot.
}
 \item{verbose}{
whether to print the log information.
}
}
\details{
\tabular{ll}{
Package: \tab CMplot\cr
Type: \tab Package\cr
Version: \tab 4.4.3\cr
Date: \tab 2023-10-10\cr
License: \tab GPL(>=2)\cr
}
}
\author{
LiLin-Yin \cr
Maintainer: LiLin-Yin <\bold{ylilin@163.com}>
}
\note{
1: In the data "Pmap", autosome and heterosome can both exist simultaneously, and heterosome can also be replaced by a number. \cr
2: only when the amplify=TRUE, then the parameter signal.cex, signal.pch, signal.col will be efficacious. \cr
3: In the circle Manhattan plot, traits will be plotted from inside to outside, it means that the first trait occupies the innermost circle. \cr
}
\examples{

#plot rectangular Manhattan only one trait with 10000 markers:
data(pig60K)                        
CMplot(pig60K[sample(1:nrow(pig60K), 10000),c(1:4)],plot.type="m",
	  threshold=c(0.01,0.05)/nrow(pig60K),threshold.col=c('red','orange'),
	  multracks=FALSE, multraits=FALSE, chr.den.col=NULL, file.output=FALSE)

################################################################################
#plot circular Manhattan for all traits with all markers:                      #
################################################################################
#data(pig60K)                                                                  #         
#CMplot(pig60K,col=c("gray30","gray60"),r=0.5,plot.type="c",                   # 
#   threshold=0.01/nrow(pig60K),signal.col=NULL,outward=TRUE)                  #
################################################################################

}
