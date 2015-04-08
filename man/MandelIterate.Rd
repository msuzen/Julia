\name{MandelIterate}
\alias{MandelIterate}
\title{
MandelIterate
}
\description{
 'MandelIterate' returns the number of iteration until a complex value
  diverges for the Mandelbrot map for a give complex number.
}
\usage{
MandelIterate(z_0)
}
\arguments{
  \item{z_0}{
    A complex coordinate (constant coefficient value for the map)
   }
}
\details{
 Iterate function.
}
\value{
 Returns an integer
}
\references{
  The Fractal Geometry of Nature, Benoit B. Mandelbrot, W.H.Freeman & Co Ltd (18 Nov 1982)
}
\author{
Mehmet Suzen <mehmet.suzen@physics.org>
}
\note{
 Iterate function
}

\seealso{
  \code{\link{JuliaIterate}} and \code{\link{MandelIterate}}
}
\examples{
  z_0 <- 0-0.5i
  it  <- MandelIterate(z_0)
}
