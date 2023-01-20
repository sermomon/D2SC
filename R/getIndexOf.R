#' @title Get index of
#' @description By default this function returns the index of the class with the maximum probability (argmax). However, it can be configured to return the index of the second or third most voted class
#' @param x RasterStack or RasterBrick containing per-class probabilities
#' @param indexOf Integer that contains the ranking position of the class whose index is to be identified.
#' @return RasterLayer object containing the index of the the class in the indexOf position
#' @import raster
#' @export

getIndexOf <- function(x, indexOf=1){

  f = function(v){which(rank(-v, ties="first") == indexOf)}
  return(raster::calc(x, f))

}
