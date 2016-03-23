library(ggflags)
library(gridExtra)
library(grid)

lf <- names(.flaglist)
lg <- lapply(.flaglist, rasterGrob, height=unit(5,"mm"))

gl <- mapply(function(x,y) arrangeGrob(x, top=y), x=lg, y=lf, SIMPLIFY = FALSE)

ggsave("flags.pdf", grid.arrange(grobs=gl), width=10, height=10)
