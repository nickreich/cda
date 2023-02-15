## download ILI data

library("cdcfluview")
ma_ili <- ilinet("state") |>
  dplyr::filter(region=="Massachusetts") |>
  dplyr::select(year, week, week_start, unweighted_ili, ilitotal, num_of_providers, total_patients)

readr::write_csv(ma_ili, file = "assets/data/ma_ili.csv")
