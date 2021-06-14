library(BiocQE)
library(RSQLite)
con = RSQLite::dbConnect(RSQLite::SQLite(), system.file(
   "sqlite/vjc3.sqlite", package="BiocQE"))
#suppressWarnings({
#pk = readRDS(system.file("pkgnet/pnet.rds", package="BiocQE"))
#})
BiocQE::browse_checks(con, NULL)
