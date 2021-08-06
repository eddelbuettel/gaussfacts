
.gf.env <- new.env()

.read.gf <- function() {
    filename <- system.file("gaussfacts", "gaussfacts.csv", package="gaussfacts")
    if (!file.exists(filename)) stop("Hm, file", filename, "is missing.", call.=FALSE)
    data <- read.csv(filename, stringsAsFactors=FALSE, encoding="UTF-8")
    data[ data[, "vote_yes"] >= 5, ]
}

##' Function to display a randomly chosen fact about Carl Friedrich Gauss
##'
##' This function displays a randomly chosen line from the included
##' data set of of random \sQuote{facts} about Carl Friedrich Gauss.
##' It is based on corpus curated by Mike Cavers via the
##' \url{https://web.archive.org/web/*/gaussfacts.com} site, and kindly made available.
##' @title Display a Random Fact about Carl Friedrich Gauss
##' @param ind Optional index of a quote; if missing a random value is sampled
##' @return A character vector containing one randomly selected line
##'  from the included file. It is of class \code{gaussfact} for
##' which an S3 print method will be invoked.
##' @author Dirk Eddelbuettel
##' @seealso \code{\link[fortunes:fortunes]{fortune}},
##'   \code{\link[rmsfact:rmsfact]{rmsfact}}
##' @examples
##'   set.seed(123)
##'   gaussfact()
gaussfact <- function(ind) {
    if (is.null(.gf.env$gf.data)) .gf.env$gf.data <- .read.gf()
    gf.data <- .gf.env$gf.data

    if (missing(ind)) {
        n <- nrow(gf.data)
        ind <- sample(1:n, 1)
    }
    v <- as.character(gf.data[ind,"story"])
    class(v) <- "gaussfact"
    return(v)
}

##' @rdname gaussfact
##' @param x Default object for \code{print} method
##' @param width Optional column width parameter
##' @param ... Other optional arguments
print.gaussfact <- function(x, width = NULL, ...) {
    if (is.null(width)) width <- 0.9 * getOption("width")
    if (width < 10) stop("'width' must be greater than 10", call.=FALSE)
    invisible(sapply(strwrap(x, width), cat, "\n"))
}
