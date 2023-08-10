args = commandArgs(trailingOnly=TRUE)

# test if there is at least one argument: if not, return an error
if (length(args)==0) {
  stop("At least one argument must be supplied (input file).n", call.=FALSE)
} else if (length(args)==1) {
  # default output file
  args[2] = paste(tools::file_path_sans_ext(args[1]), "report.html", sep = "_")
}

cat(args[1])

rmarkdown::render("parameterized_report.Rmd", params = list(
  input = args[1]), output_file = args[2])

