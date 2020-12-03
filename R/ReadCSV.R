

url_file_path <- "https://www.bnb.bg/Statistics/StExternalSector/StExchangeRates/StERForeignCurrencies/index.htm?downloadOper=true&group1=second&periodStartDays=01&periodStartMonths=01&periodStartYear=2020&periodEndDays=31&periodEndMonths=01&periodEndYear=2020&valutes=USD&search=true&showChart=false&showChartButton=true&type=CSV"

bnb_cr_usd_data <- read_csv(url_file_path, col_names = FALSE, skip = 2) 

bnb_cr_usd_data <-  read.csv(header= FALSE, url_file_path, skip = 2)
