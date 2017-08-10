bullet <- function(lines, bullet) {
  lines <- paste0(bullet, " ", crayon::black(lines))
  cat_line(paste0(lines, "\n"))
}

todo <- function(...) {
  bullet(c(...), bullet = crayon::red(clisymbols::symbol$bullet))
}
done <- function(...) {
  bullet(c(...), bullet = crayon::green(clisymbols::symbol$tick))
}

code <- function(...) {
  lines <- c(...)
  block <- paste0("  ", lines, "\n", collapse = "")
  cat_line(crayon::make_style("darkgrey")(block))
}

cat_line <- function(...) {
  cat(..., sep = "")
}