#https://gist.github.com/b-rodrigues/d427703e76a112847616c864551d96a1
library(rix)

rix(
  r_ver = "4.5.1",
  project_path = getwd(),
  r_pkgs = c(
    "rmarkdown",
    "blogdown",
    "jsonlite",
    "knitr",
    "rix",
    "purrr",
    "reactable",
    "dplyr"
  ),
  py_conf = list(
    py_version = "3.12",
    py_pkgs = c("requests")
  ),
  system_pkgs = c("hugo", "jq"),
  ide = "none",
  overwrite = TRUE
)
