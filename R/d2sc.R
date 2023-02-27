#' @title Distance to the Second Cluster
#' @description This function computes the Distance to the Second Cluster proposed by Mitchell et al. 2008
#' @param x RasterStack or RasterBrick containing per-class probabilities
#' @param ind Vector containing the c
#' @return RasterLayer object containing the Distance to the Second Class
#' @import raster
#' @export

d2sc <- function(x, ind=c(1,2)){

  #if (!requireNamespace("raster")){install.packages(raster)}
  #suppressPackageStartupMessages({require(raster)})

  fa = function(v){which(rank(-v, ties="first") == ind[1])}
  fb = function(v){which(rank(-v, ties="first") == ind[2])}

  ra <- raster::calc(x, fa)
  rb <- raster::calc(x, fb)

  x_prob <- raster::values(x)
  y_indx <- raster::values(raster::stack(ra, rb))

  d2sc <- list()

  for(i in 1:nrow(x_prob)){
    v1 <- as.numeric(x_prob[i,y_indx[i, 1]])
    v2 <- as.numeric(x_prob[i,y_indx[i, 2]])
    d2sc[[i]] <- 100*(1-(v2/v1))
  }

  rd2sc <- x[[1]] # reference raster grid
  values(rd2sc) <- unlist(d2sc)

  return(rd2sc)

}

