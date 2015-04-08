\name{JuliaImage}
\alias{JuliaImage}
\title{
 Julia Set Generator in a Square Region
}
\description{
'JuliaImage' returns two dimensional array representing escape
values from on the square region in complex plane. Escape values
(which measures the number of iteration before the lenght of
the complex value reaches to 2).
}
\usage{
JuliaImage(imageN, centre, L, C)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{imageN}{
  Number of pixels to equally space division of one side if the square region. 
}
  \item{centre}{
  A complex number that determines the centre of the square region 
}
  \item{L}{
  A side length of the square region on the complex plane.
}
  \item{C}{
 Complex coefficient 
}
}
\details{
    Julia Set is defined as the set of initial complex values
    where the z = z^2 +C does not diverge to infinity.
    C is an arbitrary complex constant that does not change
    during the iteration by definition.
}
\value{
   It returns a 2D array of real values from 0 to 1. The array
   correspods to image on the complex plane.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
 Gaston Julia (1918) "Memoire sur l'iteration des fonctions rationnelles," Journal de Mathematiques Pures et Appliquees, vol. 8, pages 47-245.
}
\author{
 Mehmet Suzen <mehmet.suzen@physics.org>
}
\note{
 Post processing to plot/color mapping of the Julia set for visualisation can be done 
 by using the array generated. See examples to get a png output.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{MandelImage}}
}
\examples{
# 
# Generating png of the Julia set
# C is 1 minus the golden ratio
#
  imageN <- 5;
  centre <- 0.0
  L <- 4.0
  C <- 1-1.6180339887;# Golden Ratio
  image <- JuliaImage(imageN,centre,L,C);
  #library(png)
  #file <- "julia1.png"
  #writePNG(image,file); # possible visulation
#
#  Generating png of the Julia set
# different coefficient.
#
  imageN <- 5;
  centre <- 0.0
  L <- 4.0
  C <- -0.70176-0.3842i
  image <- JuliaImage(imageN,centre,L,C);
  #library(png)
  #file <- "julia2.png"
  #writePNG(image,file); # possible visulation

}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
