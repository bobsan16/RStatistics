library(readxl)
library(httr)

url_address <- "https://www.bnb.bg/bnbweb/groups/public/documents/bnb_download/dep_dyn_qcat_bg.xls"
writeBin(content(GET(url_address), "raw"), file.path(tf <- tempfile(fileext = ".xls")))
bnb_dep_dyn_qcat_bg <- read_excel(tf, skip = 1)

rm(tf)