#' Adds directory structure
#'
#' @importFrom usethis use_directory
#'
#' @export
lt_use_directory <- function(type){

  if (type == "project"){

    usethis::use_directory("data")
    usethis::use_directory("docs")
    usethis::use_directory("results")
    usethis::use_directory("source")

  } else if (type == "lecture"){

    usethis::use_directory("assignments")
    usethis::use_directory("data")
    usethis::use_directory("examples")
    usethis::use_directory("extras")
    usethis::use_directory("handouts")
    usethis::use_directory("references")
    usethis::use_directory("slides")

  } else if (type == "lesson"){

    usethis::use_directory("challenge")
    usethis::use_directory("data")
    usethis::use_directory("docs")
    usethis::use_directory("img")
    usethis::use_directory("notebook")
    usethis::use_directory("references")

  }

}
