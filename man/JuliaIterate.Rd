\name{JuliaIterate}
\alias{JuliaIterate}
\title{
JuliaIterate
}
\description{
 'JuliaIterate' returns the number of iteration until a complex value
  diverges for the Julia map for a give complex number.
}
\usage{
JuliaIterate(z, C)
}
\arguments{
  \item{z}{
  A complex coordinate (initial value for the map).
}
  \item{C}{
  A complex constant.
}
}
\details{
 'JuliaIterate' returns the number of iteration until a complex value
  diverges for the Julia map for a give complex number.
}
\value{
 Number of iterations.
}
\references{
 The Fractal Geometry of Nature, Benoit B. Mandelbrot, W.H.Freeman & Co Ltd (18 Nov 1982)
}
\author{
Mehmet Suzen <mehmet.suzen@physics.org>
}
\note{
 Iterative function.
}

\seealso{
  \code{\link{JuliaIterate}} and \code{\link{MandelIterate}}
}
\examples{
  z<-0+0i
  C <- 1-1.6180339887;# Golden Ratio
  it<- JuliaIterate(z,C) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
