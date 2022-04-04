\name{MandelImage}
\alias{MandelImage}
\title{
 Mandelbrot Set Generator in a Square Domain
}
\description{
'MandelImage' returns two dimensional array representing escape
values from on the square region in complex plane. Escape values
(which measures the number of iteration before the lenght of
the complex value reaches to 2.)

}
\usage{
MandelImage(imageN, centre, L)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{imageN}{
   Number of pixels to equally space division of one side if the square region.
}
  \item{centre}{
  A complex number that determines the centre of the square region.
}
  \item{L}{
  A side length of the square region on the complex plane.
}
}
\details{
    Mandelbrot set is defined as the set of initial complex values
    where the z = z^2 +z_0 does not diverge to infinity. Initial
    value for the map is taken to be zero and z_0 is the complex
    coordinate.
}
\value{
 Returns a matrix.
}
\references{
 The Fractal Geometry of Nature, Benoit B. Mandelbrot, W.H.Freeman & Co Ltd (18 Nov 1982)
}
\author{
Mehmet Suzen <mehmet.suzen@physics.org>
}
\note{
 Returns a matrix
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{JuliaImage}}
}
\examples{
# png image 
  imageN <- 5; # increase this to see image
  centre <- 0.0
  L <- 4.0
  image<-MandelImage(imageN,centre,L);
  #file <- "mandelbrot1.png"
  # writePNG(image,file); # possible visualisation
# Closer lookup to set
  imageN <- 5;
  centre <- -0.5
  L <- 2.0
  image<-MandelImage(imageN,centre,L);
  # file <- "mandelbrot.png"
  #writePNG(image,file); # possible visualisation
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
