CIF <- function(){
    # Descargar archivo CIF de la proteína
    cod_protein <- readline(prompt = "ingrese un codigo de proteina: ")
    pdb_file <- get.pdb(cod_protein, path = tempdir(), URLonly = FALSE, gzip = FALSE, filetype = "cif")

    cif_lines <- readLines(pdb_file)



    cat(cif_lines[1:length(cif_lines)], sep = "\n")
    cat("\nCantidad total de líneas:", length(cif_lines), "\n\n")
}