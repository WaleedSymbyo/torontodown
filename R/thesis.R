#' Creates an R Markdown PDF Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file
#' to specify using the University of Toronto LaTeX template and cls files.
#'
#' @export
#'
#' @param toc TRUE to include a table of contents in the output.
#' @param highlight Syntax highlighting style.
#' @param ... arguments to be passed to \code{rmarkdown::\link[rmarkdown]{pdf_document}}
#'
#' @return A modified \code{pdf_document} based on the University of Toronto Thesis LaTeX
#'   template
#' @note The arguments highlight, keep_tex, and pandoc_args, are already set.
#' @examples
#' \dontrun{
#'  output: torontodown::thesis_pdf
#' }
thesis_pdf <- function(toc = TRUE, highlight = 'pygments', ...){

  base <- bookdown::pdf_book(
    template = here::here('templates', 'ut-thesis.tex'),
    toc = toc,
    highlight = highlight,
    pandoc_args = c("--top-level-division=chapter", "-V", glue::glue("ut-class=", here::here("templates", "ut-thesis"))),
    ...
    )

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment   <- NA
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$out.width <- "80%"
  base$knitr$opts_knit$root.dir   <- getwd()
  # Not sure if needed?
  base$knitr$knit_hooks$plot <- knitr::hook_plot_tex

  base

}

#' Creates an R Markdown gitbook Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file
#' to specify the creation of a webpage version of the thesis.
#'
#' @export
#' @return A gitbook webpage
#' @examples
#' \dontrun{
#'  output: torontodown::thesis_gitbook
#' }
thesis_gitbook <- function(){

  base <- bookdown::gitbook(
    template = here::here('templates', 'ut-thesis.html'),
    split_by = "chapter+number",
    config = list(toc = list(collapse = "section",
      before = '<li><a href="./"></a></li>',
      after = '<li><a href="https://github.com/rstudio/bookdown" target="blank">Published with bookdown</a></li>')
    )
  )

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment   <- NA
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$out.width <- "80%"
  base$knitr$opts_knit$root.dir   <- getwd()

  base

}

#' Creates an R Markdown Word Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file
#' to specify the creation of a Microsoft Word version of the thesis.
#'
#' @export
#' @return A Word Document based on (hopefully soon, but not currently)
#' the University of Toronto Thesis Word template
#' @examples
#' \dontrun{
#'  output: torontodown::thesis_word
#' }
thesis_word <- function(){

  base <- bookdown::word_document2(
    reference_docx = here::here('templates', 'ut-thesis.docx')
  )

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment   <- NA
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$out.width <- "80%"
  base$knitr$opts_knit$root.dir   <- getwd()

  base

}

#' Creates an R Markdown epub Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file
#' to specify the creation of a epub version of the thesis.
#'
#' @export
#' @return A ebook version of the thesis
#' @examples
#' \dontrun{
#'  output: torontodown::thesis_epub
#' }
thesis_epub <- function(){

  base <- bookdown::epub_book()

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment   <- NA
  base$knitr$opts_chunk$fig.align <- "center"
  base$knitr$opts_chunk$out.width <- "80%"
  base$knitr$opts_knit$root.dir   <- getwd()
  base

}

#' Generate a section for the yaml input
#'
#' @param input a file containing markdown text
#' @param sep a separator for each line. Defaults to "\\n  "
#'
#' @return a string
#' @export
#'
#' @examples
#' f <- file()
#' cat("  this is\nsome text that\nwill be renedered in\na file\n", file = f)
#' cat(inc(f))
#' close(f)
inc <- function(input, sep = "\n  "){
  paste(readLines(input), collapse = sep)
}
