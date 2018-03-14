#' Add a code of conduct
#'
#' Adds a `CODE_OF_CONDUCT.md` file to the project's top-level directory.
#'
#' @export
lt_use_conduct <- function() {
  usethis::use_template(
            "x.md",
            ignore = TRUE,
            package = "lessontools"
  )
}
