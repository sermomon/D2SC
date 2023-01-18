<h1 align="center">
  <br>
  D2SC package
  <br>
</h1>

<img src="https://user-images.githubusercontent.com/59225676/213167385-bd9870cf-20a9-40cd-86dc-36e25b99b0f7.png" align="right"
     alt="Size Limit logo by Anton Lovchikov" width="150" height="170">

<h4 align="center">A light R package to calculate the Distance to the Second Cluster proposer by <a href="https://doi.org/10.1016/j.rse.2007.12.006" target="_blank">Mitchell et al. 2008</a>.</h4>

<p align="center">
  <a href="#Overview">Overview</a> •
  <a href="#Installation">Installation</a> •
  <a href="#Usage">Usage</a> •
  <a href="#References">References</a> •
  <a href="#Related">Related</a> •
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

D2SC is a light R package to calculate the Distance to the Second Cluster proposed by [Mitchell et al. 2008](https://doi.org/10.1016/j.rse.2007.12.006). The Distance to the Second Class can be used as indicator of classification confidence in Land Use / Land Cover classification problems. The D2SC package makes it easy to calculate the distance between two classes using `raster` objects (RasterStack or RasterBrick) which contain the probability of belonging to each class (or cluster).

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

This tool uses the following open source packages:

- [raster](https://cran.r-project.org/web/packages/raster/index.html). D2SC was built under raster 3.5.2

## Related






> Web [Sergio Morell-Monzó](http://www.upv.es/ficha-personal/sermomon) &nbsp;&middot;&nbsp;
> GitHub [@sermomon](https://github.com/sermomon/sermomon) &nbsp;&middot;&nbsp;
> Twitter [@sermomon](https://twitter.com/sermomon)

