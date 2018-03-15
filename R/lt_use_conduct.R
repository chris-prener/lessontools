#' Add a code of conduct
#'
#' Adds a `CODE_OF_CONDUCT.md` file to the project's top-level directory.
#'
#' @importFrom usethis use_template
#'
#' @export
lt_use_conduct <- function(type) {

  if (type == "dss"){
    usethis::use_template(
      "x.md",
      "CODE_OF_CONDUCT.md",
      ignore = TRUE,
      package = "lessontools"
    )
  } else if (type == "chris"){
    usethis::use_template(
      "y.md",
      "CODE_OF_CONDUCT.md",
      ignore = TRUE,
      package = "lessontools"
    )
  }

}
