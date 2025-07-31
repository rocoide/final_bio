descargar_y_leer_fasta <- function() {
    # Pedir código al usuario
    codigo <- readline(prompt = "Ingrese el código de la proteína (ej: 1mbn): ")

    # Descargar secuencia desde el PDB
    cat("Descargando... Por favor espere.\n")
    seq <- get.seq(codigo)

    # Convertir la secuencia a vector de caracteres (requerido por write.fasta)
    sequence_vector <- as.vector(unlist(strsplit(seq$ali, split = "")))

    # Guardar en archivo FASTA
    fasta_file <- paste0(codigo, ".fasta")
    write.fasta(sequences = list(sequence_vector), names = codigo, file.out = fasta_file)

    # Leer y devolver la secuencia
    readAAStringSet(fasta_file)[[1]]
}