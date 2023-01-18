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
    <img src="">
  </a>
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









<h1 align="center">
  <br>
  D2SC package
  <br>
</h1>

<h4 align="center">A minimal Markdown Editor desktop app built on top of <a href="http://electron.atom.io" target="_blank">Electron</a>.</h4>

<p align="center">
  <a href="https://badge.fury.io/js/electron-markdownify">
    <img src="https://badge.fury.io/js/electron-markdownify.svg"
         alt="Gitter">
  </a>
  <a href="https://gitter.im/amitmerchant1990/electron-markdownify"><img src="https://badges.gitter.im/amitmerchant1990/electron-markdownify.svg"></a>
  <a href="https://saythanks.io/to/bullredeyes@gmail.com">
      <img src="https://img.shields.io/badge/SayThanks.io-%E2%98%BC-1EAEDB.svg">
  </a>
  <a href="https://www.paypal.me/AmitMerchant">
    <img src="https://img.shields.io/badge/$-donate-ff69b4.svg?maxAge=2592000&amp;style=flat">
  </a>
</p>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#download">Download</a> •
  <a href="#credits">Credits</a> •
  <a href="#related">Related</a> •
  <a href="#license">License</a>
</p>

![screenshot](https://raw.githubusercontent.com/amitmerchant1990/electron-markdownify/master/app/img/markdownify.gif)

## Key Features

* LivePreview - Make changes, See changes
  - Instantly see what your Markdown documents look like in HTML as you create them.
* Sync Scrolling
  - While you type, LivePreview will automatically scroll to the current location you're editing.
* GitHub Flavored Markdown  
* Syntax highlighting
* [KaTeX](https://khan.github.io/KaTeX/) Support
* Dark/Light mode
* Toolbar for basic Markdown formatting
* Supports multiple cursors
* Save the Markdown preview as PDF
* Emoji support in preview :tada:
* App will keep alive in tray for quick usage
* Full screen mode
  - Write distraction free.
* Cross platform
  - Windows, macOS and Linux ready.

## How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Node.js](https://nodejs.org/en/download/) (which comes with [npm](http://npmjs.com)) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/amitmerchant1990/electron-markdownify

# Go into the repository
$ cd electron-markdownify

# Install dependencies
$ npm install

# Run the app
$ npm start
```

> **Note**
> If you're using Linux Bash for Windows, [see this guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/) or use `node` from the command prompt.


## Download

You can [download](https://github.com/amitmerchant1990/electron-markdownify/releases/tag/v1.2.0) the latest installable version of Markdownify for Windows, macOS and Linux.

## Emailware

Markdownify is an [emailware](https://en.wiktionary.org/wiki/emailware). Meaning, if you liked using this app or it has helped you in any way, I'd like you send me an email at <bullredeyes@gmail.com> about anything you'd want to say about this software. I'd really appreciate it!

## Credits

This software uses the following open source packages:

- [Electron](http://electron.atom.io/)
- [Node.js](https://nodejs.org/)
- [Marked - a markdown parser](https://github.com/chjj/marked)
- [showdown](http://showdownjs.github.io/showdown/)
- [CodeMirror](http://codemirror.net/)
- Emojis are taken from [here](https://github.com/arvida/emoji-cheat-sheet.com)
- [highlight.js](https://highlightjs.org/)

## Related

[markdownify-web](https://github.com/amitmerchant1990/markdownify-web) - Web version of Markdownify

## Support

<a href="https://www.buymeacoffee.com/5Zn8Xh3l9" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/purple_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

<p>Or</p> 

<a href="https://www.patreon.com/amitmerchant">
	<img src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" width="160">
</a>

## You may also like...

- [Pomolectron](https://github.com/amitmerchant1990/pomolectron) - A pomodoro app
- [Correo](https://github.com/amitmerchant1990/correo) - A menubar/taskbar Gmail App for Windows and macOS

## License

MIT

---

> [amitmerchant.com](https://www.amitmerchant.com) &nbsp;&middot;&nbsp;
> GitHub [@amitmerchant1990](https://github.com/amitmerchant1990) &nbsp;&middot;&nbsp;
> Twitter [@amit_merchant](https://twitter.com/amit_merchant)

