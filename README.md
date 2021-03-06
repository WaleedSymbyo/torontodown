
<!-- badges: start -->
[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build status](https://github.com/mattwarkentin/torontodown/workflows/R-CMD-check/badge.svg)](https://github.com/mattwarkentin/torontodown/actions?workflow=R-CMD-check)
[![](https://img.shields.io/github/last-commit/mattwarkentin/torontodown.svg)](https://github.com/mattwarkentin/torontodown/commits/master)
![GitHub repo size](https://img.shields.io/github/repo-size/mattwarkentin/torontodown)

<!-- badges: end -->
---

# torontodown <img src='man/figures/logo.png' align="right" height="138.5" />

This project is a modified version Chester Ismay's [thesisdown][4] and Zhian Kavmar's [beaverdown][5] package to provide support for University of Toronto's SGS thesis formatting guidelines.

Currently, the PDF version is fully functional. All other versions are derived from `thesisdown` and are not guaranteed to work.

---

## Installation

To install and use `torontodown` and use it for your dissertation/thesis, you will need:

 - [pandoc][0]
 - [LaTeX][1]
 - [R >= 3.6][2]
 - [RStudio][3] (optional, but it helps)

Open Rstudio and type:

```r
if (!require("remotes")) install.packages("remotes", repos = "http://cran.rstudio.org")
remotes::install_github("mattwarkentin/torontodown")
```

To use it, open Rstudio, click on **File > New Project... > New Directory** and then select the **University of Toronto Thesis** from the **Projects**.

<!--replace image with new one-->
<!--![New R Markdown](thesis_rmd.png)-->

Make sure to give your thesis a title and save it to the correct path. RStudio will send you to that directory and should open `index.Rmd` and `_bookdown.yml`.

Instructions for editing are in the [README file][6].

---

Please note that the 'torontodown' project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

<!--
The current output for the four versions is here:
- [PDF](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.pdf) (Generating LaTeX file is available [here](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.tex) with other files at in the [book directory](https://github.com/ismayc/thesisdown_book/tree/gh-pages).)
- [Word](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.docx)
- [ePub](https://github.com/ismayc/thesisdown_book/blob/gh-pages/thesis.epub)
- [gitbook](http://ismayc.github.io/thesisdown_book)

Under the hood, the University of Toronto LaTeX template is used to ensure that documents conform precisely to the School of Graduate Studies (SGS) submission standards. At the same time, composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and **R** code and its output can be seamlessly included using [rmarkdown](http://rmarkdown.rstudio.com).

Using **thesisdown** has some prerequisites which are described below. To compile PDF documents using **R**, you are going to need to have LaTeX installed.  It can be downloaded for Windows at <http://http://miktex.org/download> and for Mac at <http://tug.org/mactex/mactex-download.html>.  Follow the instructions to install the necessary packages after downloading the (somewhat large) installer files.  You may need to install a few extra LaTeX packages on your first attempt to knit as well.

### Using thesisdown from Chester's GitHub

To use **thesisdown** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2) Install the **thesisdown** package: 

```S
install.packages("devtools")
devtools::install_github("ismayc/thesisdown")
```

3) Use the **New R Markdown** dialog to select **Thesis**:

replace image with new one
![New R Markdown](thesis_rmd.png)

Note that this will currently only **Knit** if you name the directory `index` as shown above.

-->

 [0]: http://pandoc.org/
 [1]: https://www.latex-project.org/get/
 [2]: https://r-project.org
 [3]: https://rstudio.org
 [4]: https://github.com/ismayc/thesisdown
 [5]: https://github.com/zkamvar/beaverdown/
 [6]: https://github.com/mattwarkentin/torontodown/tree/master/inst/rstudio/templates/project/resources#readme
