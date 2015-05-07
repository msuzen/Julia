#!/bin/bash
# msuzen
# April.2015 GPLv3  
# Parameters
PACKAGE_NAME=Julia
VERSION=_0.3.2
BUILD_DIR=build_tmp
Rexe=R
Rscr=Rscript
TAR=tar
GIT=git
#
rm -rf $BUILD_DIR
$GIT archive master | bzip2 > $PACKAGE_NAME.tar.bz2
mkdir $BUILD_DIR
mkdir build_tmp/$PACKAGE_NAME
mv $PACKAGE_NAME.tar.bz2 build_tmp/$PACKAGE_NAME
cd build_tmp/$PACKAGE_NAME
$TAR xfj $PACKAGE_NAME.tar.bz2
rm -rf $PACKAGE_NAME.tar.bz2
cd ..
rm $PACKAGE_NAME/*.bash
$Rexe CMD build $PACKAGE_NAME
rm -rf $PACKAGE_NAME
tar xfz $PACKAGE_NAME$VERSION.tar.gz
cd $PACKAGE_NAME
$Rscr -e "library(roxygen2); roxygen2::roxygenise()"
cd ..
$Rexe CMD check $PACKAGE_NAME --as-cran
