library(png)


# mogrify -resize 10%  -format png -quality 75 -path ../flags *.png

lf <- list.files(path="png", pattern="\\.png$", full.names = TRUE)


.flaglist <- lapply(lf, readPNG)
names(.flaglist) <- tolower(gsub("^png/|\\.png", "", lf))

save(.flaglist, file="lflags.rda")

