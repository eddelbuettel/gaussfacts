
## gaussfacts: The Greatest Mathematician Since Antiquity

[![Build Status](https://travis-ci.org/eddelbuettel/gaussfacts.svg)](https://travis-ci.org/eddelbuettel/gaussfacts) 
[![License](http://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-2.0.html) 
[![CRAN](http://www.r-pkg.org/badges/version/gaussfacts)](http://cran.r-project.org/package=gaussfacts) 
[![Downloads](http://cranlogs.r-pkg.org/badges/gaussfacts?color=brightgreen)](http://www.r-pkg.org/pkg/gaussfacts)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/gaussfacts)](https://github.com/eddelbuettel/gaussfacts)

### Motivation

<img src="https://upload.wikimedia.org/wikipedia/commons/9/9b/Carl_Friedrich_Gauss.jpg" width="320">

This package displays randomly-chosen _facts_ about
[Carl Friedrich Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss),
based on the collection curated by Mike Cavers via the
[gaussfacts](http://gaussfacts.com) web site. Each call of `gaussfacts()`
displays another (randomly chosen) fact.

### Example

```{r}
R> library(gaussfacts)                  # load the package
R> set.seed(1)                          # so that this is predictable
R> gaussfact()
Gauss can shave with Occam's razor.
R>
```

### Package Status

Complete and functional, no dependencies, passes tests.

### Installation

The package is [on CRAN](http://cran.r-project.org/package=gaussfacts) and
can be installed via a standard

```{r}
R> install.packages("gaussfacts")
```

### Author

Dirk Eddelbuettel

### License

GPL (>= 2)
