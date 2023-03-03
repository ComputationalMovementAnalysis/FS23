packages <- sapply(sessionInfo()$otherPkgs, function(x) x$Package)
packages <- packages[packages != "quarto"]
packages <- sapply(packages, function(p) paste0("package:", p))
lapply(packages, detach, character.only = TRUE, unload = TRUE)
# clear environment
rm(list = ls())