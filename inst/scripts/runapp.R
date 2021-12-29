library(pkgnet)
pl = readRDS("/tmp/demo_2021-06-14_06_39_16_pnet.rds")
library(RSQLite)
con = dbConnect(SQLite(), "/tmp/demo_2021-06-14_06_39_16.sqlite")
library(BiocQE)
browse_checks(con, pl)

