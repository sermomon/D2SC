<h1 align="center">
  <br>
  D2SC package
  <br>
</h1>

<h4 align="center">A little R package to calculate the Distance to the Second Cluster proposer by <a href="https://doi.org/10.1016/j.rse.2007.12.006" target="_blank">Mitchell et al. 2008</a>.</h4>

<p align="center">
  <a href="#Overview">Overview</a> •
  <a href="#Installation">Installation</a> •
  <a href="#Usage">Usage</a> •
  <a href="#References">References</a> •
  <a href="#Related">Related</a>
</p>

<p align="center">
  <a href="https://github.com/sermomon/D2SC">
    <img src="https://img.shields.io/badge/D2SC-v1.0.0-brightgreen"
         alt="Gitter">
  </a>
  <a href="https://cran.r-project.org/">
      <img src="https://img.shields.io/badge/R-package-blue"></a>
  <a href="https://cran.r-project.org/web/packages/raster/index.html">
      <img src="https://img.shields.io/badge/raster-%3E%3D3.5.2-blue">
  </a>
  <a href="">
      <img src="https://img.shields.io/badge/Open-Source-orange">
</p>

## Overview

D2SC is a light R package to calculate the Distance to the Second Cluster proposed by [Mitchell et al. 2008](https://doi.org/10.1016/j.rse.2007.12.006). The Distance to the Second Cluster can be used as indicator of classification confidence in Land Use / Land Cover classification problems. The D2SC package makes it easy to calculate the distance between two cluster using `raster` objects (RasterStack or RasterBrick) which contain the probability of belonging to each cluster (or class).

D2SC is computed as the complement of the ratio between most voted and second voted class [Hermosilla et al. 2022](https://doi.org/10.1016/j.rse.2022.113276):

$$D2SC = 100*(1-(v2/v1))$$

where $v1$ is the proportion of votes the most voted class and $v2$ is the proportion of votes of the second most voted class. The values of D2SC ratio range between 0, which indicates low confidence attributions, and 100, indicating high confidence attributions.

> **Note**
> D2SC package works with both RasterStack and RasterBrick objects. See [raster](https://cran.r-project.org/web/packages/raster/index.html) documentation to wotk with.

## Installation

To use this package you need to clone this repository usind `devtools`:

```bash
# Install devtools
install.packages("devtools")
library(devtools)
```

```bash
# Install the development version from GitHub
install_github("sermomon/D2SC")
```

## Usage

The main function of the package is `d2sc` which calculate the Distance to the Second Cluster. But, the package also contain two complementaty functions: `getIndexOf` and `distBetween`.

By default, `d2sc` computes the Euclidean distance between the class with the highest probability and the class with the second highest probability:

```bash

r_d2sc <- d2sc(r)

```

You can also calculate the distance between the class with the highest probability and the class with the third highest probability by modifying the `ind` argument.

```bash

r_d1_3 <- d2sc(r, ind=c(1,3))

```

## References

* Scott W. Mitchell, Tarmo K. Remmel, Ferenc Csillag, Michael A. Wulder (2008). Distance to second cluster as a measure of classification confidence. Remote Sensing of Environment, 112(5), 2615-2626. https://doi.org/10.1016/j.rse.2007.12.006
* Txomin Hermosilla, Alex Bastyr, Nicholas C. Coops, Joanne C. White, Michael A. Wulder (2022). Mapping the presence and distribution of tree species in Canada's forested ecosystems. Remote Sensing of Environment, 282, 113276. https://doi.org/10.1016/j.rse.2022.113276

D2SC is a research tool created by [Sergio Morell-Monzó](https://orcid.org/0000-0001-8883-2618). Meaning, if you liked using this tool or it has helped you in any way, I'd like you send me an email at <sermomon@upv.es> about anything you'd want to say about this package. I'd really appreciate it!

## Credits

This tool uses the following Open Source packages:

- [raster](https://cran.r-project.org/web/packages/raster/index.html). D2SC was built under raster 3.5.2

## Related

The following scientific studies used the Distance to The Second Cluster:

* Txomin Hermosilla, Michael A. Wulder, Joanne C. White, Nicholas C. Coops, Geordie W. Hobart (2015). Regional detection, characterization, and attribution of annual forest change from 1984 to 2012 using Landsat-derived time-series metrics. Remote Sensing of Environment, 170, 121-132. https://doi.org/10.1016/j.rse.2015.09.004
* Txomin Hermosilla, Michael A. Wulder, Joanne C. White, Nicholas C. Coops & Geordie W. Hobart (2018) Disturbance-Informed Annual Land Cover Classification Maps of Canada's Forested Ecosystems for a 29-Year Landsat Time Series, Canadian Journal of Remote Sensing, 44(1), 67-87. https://doi.org/10.1080/07038992.2018.1437719
* Wei Wei, Jing Zhang, Liang Zhou, Binbin Xie, Junju Zhou, Chuanhua Li (2021). Comparative evaluation of drought indices for monitoring drought based on remote sensing data. Environ Sci Pollut Res 28, 20408–20425 (2021). https://doi.org/10.1007/s11356-020-12120-0
* Paulo J. Murillo-Sandoval, Thomas Hilker, Meg A. Krawchuk, Jamon Van Den Hoek (2018). Detecting and Attributing Drivers of Forest Disturbance in the Colombian Andes Using Landsat Time-Series. Forest, 9(5), 269. https://doi.org/10.3390/f9050269


> Web [Sergio Morell-Monzó](http://www.upv.es/ficha-personal/sermomon) &nbsp;&middot;&nbsp;
> Google Scholar [Sergio Morell-Monzó](https://scholar.google.es/citations?user=LwdrU6wAAAAJ&hl=es&oi=ao) &nbsp;&middot;&nbsp;
> GitHub [@sermomon](https://github.com/sermomon/sermomon) &nbsp;&middot;&nbsp;
> Twitter [@sermomon](https://twitter.com/sermomon)

