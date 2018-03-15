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
      "CONDUCT_DSS.md",
      "CODE_OF_CONDUCT.md",
      ignore = FALSE,
      package = "lessontools"
    )
  } else if (type == "chris"){
    usethis::use_template(
      "CONDUCT_CHRIS.md",
      "CODE_OF_CONDUCT.md",
      ignore = FALSE,
      package = "lessontools"
    )
  }

}
