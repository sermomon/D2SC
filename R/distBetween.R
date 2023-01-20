#' @title Distance between
#' @description Get the euclidean distance between two classes
#' @param x RasterStack or RasterBrick containing per-class probabilities
#' @param indexOfMajor RasterLayer containing the index of the major class (obtained from getIndexOf)
#' @param indexOfMinor RasterLayer containing the index of the minor class (obtanied from getIndexOf)
#' @return RasterLayer object containing the distance between the two classes
#' @import raster
#' @export

distBetween <- function(x, indexOfFirst, indexOfSecond){

  x_prob <- raster::values(x)
  y_indx <- raster::values(raster::stack(indexOfFirst, indexOfSecond))

  d2sc <- list()
  for(i in 1:nrow(x_prob)){
    v1 <- as.numeric(x_prob[i,y_indx[i, 1]])
    v2 <- as.numeric(x_prob[i,y_indx[i, 2]])
    d2sc[[i]] <- 100*(1-(v2/v1))
  }
  rd2sc <- x[[1]]
  values(rd2sc) <- unlist(d2sc)
  return(rd2sc)
}
