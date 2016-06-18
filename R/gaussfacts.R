
.gf.env <- new.env()

.read.gf <- function() {
    filename <- system.file("gaussfacts", "gaussfacts.csv", package="gaussfacts")
    if (!file.exists(filename)) stop("Hm, file", filename, "is missing.", call.=FALSE)
    data <- read.csv(filename, stringsAsFactors=FALSE)
    data[ data[, "vote_yes"] >= 5, ]

    ## also unescape cf http://stackoverflow.com/questions/5060076/
}

##' Function to display a randomly chosen fact about Richard M. Stallman
##'
##' This function displays a randomly chosen line from the included
##' data set of of random \sQuote{facts} about Richard M. Stallman.
##' The function is a port of the GNU Octave function \code{fact}
##' doing the same, and written by Jordi Gutiérrez Hermoso based on
##' the (now defunct) site \url{http://www.stallmanfacts.com}.
##' @title Display a Random Fact about Richard M. Stallman
##' @return A character vector containing one randomly selected line
##'  from the included file. It is of class \code{rmsfact} for
##'  which an S3 print method will be invoked.
##' @author Dirk Eddelbuettel
##' @seealso \code{\link[fortunes:fortunes]{fortune}}
##' @examples
##'   set.seed(123)
##'   rmsfact()
gaussfact <- function() {
    if (is.null(.gf.env$gf.data)) .gf.env$gf.data <- .read.gf()
    gf.data <- .gf.env$gf.data

    n <- nrow(gf.data)
    p <- sample(1:n, 1)
    v <- as.character(gf.data[p,"story"])
    class(v) <- "gaussfact"
    return(v)
}

##' @rdname rmsfact
##' @param x Default object for \code{print} method
##' @param width Optional column width parameter
##' @param ... Other optional arguments
print.gaussfact <- function(x, width = NULL, ...) {
    if (is.null(width)) width <- 0.9 * getOption("width")
    if (width < 10) stop("'width' must be greater than 10", call.=FALSE)
    invisible(sapply(strwrap(x, width), cat, "\n"))
}
