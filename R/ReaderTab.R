library(readr)

# ESTAT_GOV_10DD_EDPT1
        # GOV_10DD_EDPT1

url_file_path <- "https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?file=data/gov_10dd_edpt1.tsv.gz"
estat_gov_10dd_edpt1_data <- readr::read_tsv(url_file_path) 
 
estat_gov_10dd_edpt1_data <- spec_tsv(url_file_path)


saveRDS(estat_gov_10dd_edpt1_data, file = "DATA/RDS/estat_gov_10dd_edpt1_data.RDS") 
estat_gov_10dd_edpt1_data <- readRDS("DATA/RDS/estat_gov_10dd_edpt1_data.RDS")


url_file_path <- "https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?file=dic/en/unit.dic"
estat_unit_dic <- read_tsv(url_file_path, col_names = c("Code", "Description"))

url_file_path <- "https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?file=dic/en/sector.dic"
estat_sector_dic <- read_tsv(url_file_path, col_names = c("Code", "Description"))

url_file_path <- "https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?file=dic/en/na_item.dic"
estat_na_item_dic <- read_tsv(url_file_path, col_names = c("Code", "Description"))

url_file_path <- "https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?file=dic/en/unit.dic"
estat_geo_dic <- read_tsv(url_file_path, col_names = c("Code", "Description"))