x <- 0

str_header = paste("x","y")
print(str_header,quote=FALSE)

while (x <= 360) {
  radians <- x * pi / 180
    y <- sin(radians)
    # cat("x =", x, ", sin(x) =", y, "\n")
    # or
    # msg = paste(x,y)
    # print(msg)

    str_row = paste(x,y)
    print(str_row,quote=FALSE)
  x <- x + 1
}
