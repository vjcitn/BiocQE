#' use HTTPS to clone a package from Bioconductor git
#' @param x character(1) package name expected to be a Bioconductor package in git
#' @return result of system()
#' @examples
#' td = tempdir()
#' wd = getwd()
#' setwd(td)
#' lk = getpk("parody")
#' if (FALSE) lk2 = try(getpk("parody_z")) # should fail
#' setwd(wd)
#' @export
getpk = function (x, tag="RELEASE_3_14") {
 system(sprintf("git clone https://git.bioconductor.org/packages/%s.git", 
    x))
 system(paste("cd ", x, "; git fetch --all; git checkout", tag))
}
