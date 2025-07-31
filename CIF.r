CIF <- function(){
    # Descargar archivo CIF de la proteína 1mbn
    pdb_file <- get.pdb("1mbn", path = tempdir(), URLonly = FALSE, gzip = FALSE, filetype = "cif")

    # Leer y mostrar las primeras líneas
    cif_lines <- readLines(pdb_file)
    cat(cif_lines[1:1000], sep = "\n")
}