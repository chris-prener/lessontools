#' Add an index file
#'
#' Adds an `INDEX.md` file to the project's top-level directory.
#'
#' @importFrom usethis use_template
#'
#' @export
lt_use_conduct <- function(type) {

  if (type == "lecture"){
    usethis::use_template(
      "INDEX_LECTURE.md",
      "references/INDEX.md",
      ignore = FALSE,
      data = package_data(),
      open = open,
      package = "lessontools"
    )
  }

}
