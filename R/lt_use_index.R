#' Add an index file
#'
#' Adds an `INDEX.md` file to the project's top-level directory.
#'
#' @importFrom usethis use_template
#'
#' @export
lt_use_index <- function(type) {

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


package_data <- function(base_path = usethis::proj_get()) {
  desc <- desc::description$new(base_path)

  out <- as.list(desc$get(desc$fields()))
  if (uses_github(base_path)) {
    out$github <- gh::gh_tree_remote(base_path)
  }
  out
}

uses_github <- function(base_path = usethis::proj_get()) {
  tryCatch({
    gh::gh_tree_remote(base_path)
    TRUE
  }, error = function(e) FALSE)
}
