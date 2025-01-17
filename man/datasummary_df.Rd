% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datasummary_df.R
\name{datasummary_df}
\alias{datasummary_df}
\title{Draw a table from a data.frame}
\usage{
datasummary_df(
  data,
  output = "default",
  fmt = 2,
  align = NULL,
  hrule = NULL,
  title = NULL,
  notes = NULL,
  add_rows = NULL,
  add_columns = NULL,
  escape = TRUE,
  ...
)
}
\arguments{
\item{data}{A data.frame (or tibble)}

\item{output}{filename or object type (character string)
\itemize{
\item Supported filename extensions: .html, .tex, .md, .txt, .png, .jpg.
\item Supported object types: "default", "html", "markdown", "latex", "latex_tabular", "data.frame", "modelsummary_list", "gt", "kableExtra", "huxtable", "flextable", "jupyter".
\item Warning: Users should not supply a file name to the \code{output} argument if they intend to customize the table with external packages. See the 'Details' section.
\item LaTeX compilation requires the \code{booktabs} and \code{siunitx} packages, but \code{siunitx} can be disabled or replaced with global options. See the 'Details' section.
\item The default output formats and table-making packages can be modified with global options. See the 'Details' section.
}}

\item{fmt}{determines how to format numeric values
\itemize{
\item integer: the number of digits to keep after the period \code{format(round(x, fmt), nsmall=fmt)}
\item character: passed to the \code{sprintf} function (e.g., '\%.3f' keeps 3 digits with trailing zero). See \code{?sprintf}
\item function: returns a formatted character string.
\item Note on LaTeX formatting: To ensure proper typography, all numeric entries are enclosed in the \verb{\\num\{\}} command from the \code{siunitx} LaTeX package by default. This behavior can be altered with global options. See the 'Details' section.
}}

\item{align}{A string with a number of characters equal to the number of columns in
the table (e.g., \code{align = "lcc"}).  Valid characters: l, c, r, S.
\itemize{
\item "l": left-aligned column
\item "c": centered column
\item "r": right-aligned column
\item "d": dot-aligned column. Only supported for LaTeX/PDF tables produced by \code{kableExtra}. These commands must appear in the LaTeX preamble (they are added automatically when compiling Rmarkdown documents to PDF):
\itemize{
\item \verb{\\usepackage\{booktabs\}}
\item \verb{\\usepackage\{siunitx\}}
\item \verb{\\newcolumntype\{d\}\{S[input-symbols = ()]\}}
}
}}

\item{hrule}{position of horizontal rules (integer vector)}

\item{title}{string}

\item{notes}{list or vector of notes to append to the bottom of the table.}

\item{add_rows}{a data.frame (or tibble) with the same number of columns as
your main table. By default, rows are appended to the bottom of the table.
You can define a "position" attribute of integers to set the row positions.
See Examples section below.}

\item{add_columns}{a data.frame (or tibble) with the same number of rows as
your main table.}

\item{escape}{boolean TRUE escapes or substitutes LaTeX/HTML characters which could
prevent the file from compiling/displaying. This setting does not affect captions or notes.}

\item{...}{all other arguments are passed through to the extractor and
table-making functions. This allows users to pass arguments directly to
\code{modelsummary} in order to affect the behavior of other functions behind
the scenes. Examples include:
\itemize{
\item \code{broom::tidy(exponentiate=TRUE)} to exponentiate logistic regression. Please see the \code{modelsummary} vignette on the package website for important technical notes on this topic.
\item \code{performance::model_performance(metrics="RMSE")} to select goodness-of-fit statistics to extract using the \code{performance} package (must have set \code{options(modelsummary_get="easystats")} first).
}}
}
\description{
Draw a table from a data.frame
}
