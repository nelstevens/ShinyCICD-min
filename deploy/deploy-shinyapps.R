# deploy/deploy-shinyapps.R
# usethis::use_build_ignore("deploy")
rsconnect::setAccountInfo(
  Sys.getenv("nelsonstevens"),
  Sys.getenv("D872A74ED47860EEC2D766621135DE2B"),
  Sys.getenv("5A6LCpPeeueCcB64Z2uq7gK8LEAyB7U9TX0Qd/Dx")
)
rsconnect::deployApp(
  appName = "ShinyCICD",
  # exclude hidden files and renv directory (if present)
  appFiles = setdiff(list.files(), "renv")
)
