
<h1 align="center">
  <br>
  <a href="http://www.amitmerchant.com/electron-markdownify"><img src="https://user-images.githubusercontent.com/59225676/213167385-bd9870cf-20a9-40cd-86dc-36e25b99b0f7.png" alt="D2SC" width="200"></a>
  <br>
  D2SC R package
  <br>
</h1>

<h4 align="center">A light R package to calculate the Distance to the Second Cluster <a href="https://doi.org/10.1016/j.rse.2007.12.006" target="_blank">Mitchell et al. 2008</a>.</h4>

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
  <a href="#Overview">Overview</a> •
  <a href="#Installation">Installation</a> •
  <a href="#Usage">Usage</a> •
  <a href="#References">References</a> •
  <a href="#Related">Related</a> •
  <a href="#License">License</a>
</p>

## Overview

D2SC is a light R package to calculate the Distance to the Second Class proposed by [Mitchell et al. 2008](https://doi.org/10.1016/j.rse.2007.12.006). The Distance to the Second Class can be used as indicator of classification confidence in Land Use / Land Cover classification problems. The D2SC package makes it easy to calculate the distance between two classes from `raster` objects (RasterStack or RasterBrick) which contain the probability of belonging to each class.

D2SC is computed as the complement of the ratio between most voted and second voted class [Hermosilla et al. 2022](https://doi.org/10.1016/j.rse.2022.113276):

$$D2SC = 100*(1-(v2/v1))$$

where $v1$ is the proportion of votes the most voted class and $v2$ is the proportion of votes of the second most voted class. The values of D2SC ratio range between 0, which indicates low confidence attributions, and 100, indicating high confidence attributions.

> **Note**
> D2SC package works with both `raster` and `terra` objects. See [raster](https://cran.r-project.org/web/packages/raster/index.html) or [terra](https://cran.r-project.org/web/packages/terra/index.html) documentation to wotk with.

## Installation

To use this package you need to clone this repository usind `devtools`:

```bash
install.packages("devtools")
```

```bash
library(devtools)
install_github("sermomon/D2SC")
```

> **Note**
> If you're using Linux Bash for Windows, [see this guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/) or use `node` from the command prompt.


## Usage

You can [download](https://github.com/amitmerchant1990/electron-markdownify/releases/tag/v1.2.0) the latest installable version of Markdownify for Windows, macOS and Linux.

## References

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

