
## gaussfacts: The Greatest Mathematician Since Antiquity

[![CI](https://github.com/eddelbuettel/gaussfacts/workflows/ci/badge.svg)](https://github.com/eddelbuettel/gaussfacts/actions?query=workflow%3Aci)
[![License](https://img.shields.io/badge/license-GPL%20%28%3E=%202%29-brightgreen.svg?style=flat)](https://www.gnu.org/licenses/gpl-2.0.html) 
[![CRAN](https://www.r-pkg.org/badges/version/gaussfacts)](https://cran.r-project.org/package=gaussfacts) 
[![Dependencies](https://tinyverse.netlify.com/badge/gaussfacts)](https://cran.r-project.org/package=gaussfacts)
[![Downloads](https://cranlogs.r-pkg.org/badges/gaussfacts?color=brightgreen)](https://www.r-pkg.org:443/pkg/gaussfacts)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/gaussfacts)](https://github.com/eddelbuettel/gaussfacts)

### Motivation

<img src="https://upload.wikimedia.org/wikipedia/commons/9/9b/Carl_Friedrich_Gauss.jpg" width="320">

This package displays randomly-chosen _facts_ about
[Carl Friedrich Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss),
based on the collection curated by Mike Cavers via the
[gaussfacts](https://web.archive.org/web/*/gaussfacts.com) web site. Each call of `gaussfacts()`
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

The package is [on CRAN](https://cran.r-project.org/package=gaussfacts) and
can be installed via a standard

```{r}
R> install.packages("gaussfacts")
```

### Ports

A [Julia port](https://github.com/eliascarv/GaussFacts.jl) is available
thanks to [Elias Carvalho](https://github.com/eliascarv).

### Author

Dirk Eddelbuettel

### License

GPL (>= 2)
