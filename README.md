[![Build Status](https://travis-ci.org/msuzen/Julia.svg?branch=master)](https://travis-ci.org/msuzen/Julia)
[![CRAN Version](http://www.r-pkg.org/badges/version/Julia)](https://cran.r-project.org/package=Julia)
[![Total RStudio Cloud Downloads](http://cranlogs.r-pkg.org/badges/grand-total/Julia?color=brightgreen)](https://cran.r-project.org/package=Julia)
[![RStudio Cloud Downloads](http://cranlogs.r-pkg.org/badges/Julia?color=brightgreen)](https://cran.r-project.org/package=Julia)
[![License](http://img.shields.io/badge/license-GPLv3-brightgreen.svg)](http://www.gnu.org/licenses/gpl-3.0.html)

# Julia
Julia: Fractal Image Data Generator

The package aim at generating Julia and Mandelbrot sets with given initial conditions and resolution. 

## Julia Set

[Julia set](https://en.wikipedia.org/wiki/Julia_set) data can be generated with the `JuliaImage` command. 
An example case, 

```r
imageN <- 2000
centre <- 0.0
L <- 4.0
C <- -0.8 + 0.156i
image_matrix <- JuliaImage(imageN, centre, L, C)
```

A sample visualisation with R's hcl palette `Roma` as set values on 
a grid given as a matrix.

```r
image(image_matrix[550:1450, 200:1800], 
      col=hcl.colors(2000, palette="Roma"), 
      axes=FALSE, useRaster=TRUE)
```

![](man/figures/julia0.jpeg) 

