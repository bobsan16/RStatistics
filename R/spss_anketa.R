library(haven)

path = file.path("data/anketa_ODBC2.sav")
dataset = read_sav(path)