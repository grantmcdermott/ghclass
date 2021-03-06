# Based on https://ropensci.org/technotes/2019/12/08/precompute-vignettes/

# Vignettes that depend on GitHub PAT are precompiled:

knitr::knit("vignettes/ghclass.Rmd.orig", "vignettes/ghclass.Rmd")
knitr::knit("vignettes/instructions_students.Rmd.orig", "vignettes/instructions_students.Rmd")
knitr::knit("vignettes/peer.Rmd.orig", "vignettes/peer.Rmd")

devtools::build_vignettes()
