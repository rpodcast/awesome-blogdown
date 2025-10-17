assemble_json_data <- function(dir = "data/json") {
  # Get all JSON files in the data/json directory
  json_files <- list.files(dir, pattern = "\\.json$", full.names = TRUE)

  # Read all JSON files and combine into a single data frame
  combined_df <- json_files |>
    purrr::map(jsonlite::fromJSON) |>
    purrr::map_dfr(tibble::as_tibble)

  return(combined_df)
}

import_json_data <- function(file = "data/all.json") {
  df <- jsonlite::fromJSON(file) |>
    tibble::as_tibble()
  return(df)
}

create_site_table <- function(all_data) {
  reactable::reactable(
    all_data,
    columns = list(
      name = colDef(
        name = "Site",
        cell = function(value, index) {
          url <- dplyr::slice(all_data, index) |>
            dplyr::pull(url)
          htmltools::tags$a(href = url, target = "_blank", as.character(value))
        }
      ),
      desc = colDef(
        name = "Description"
      ),
      result = colDef(
        name = "Viewable",
        cell = function(value) {
          if (value == "OK") "\u2714\ufe0f" else "\u274c"
        }
      ),
      code = colDef(show = FALSE),
      url = colDef(show = FALSE)
    ),
    searchable = TRUE,
    showPageSizeOptions = TRUE,
    pageSizeOptions = c(10, 50, 150),
    defaultPageSize = 50
  )
}