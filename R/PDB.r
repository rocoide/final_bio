PDB <- function(){
    cod_protein <- readline(prompt = "Ingrese un código de proteína: ")
    
    # Leer archivo PDB
    pdb <- read.pdb(cod_protein)

    # Obtener secuencia
    seq1 <- pdbseq(pdb)

    # Unir la secuencia en una sola cadena
    seq2 <- paste(seq1, collapse = "")

    # Verificamos los datos principales
    print(pdb)
    cat("\nLongitud de la secuencia:", nchar(seq2), "\n\n")
}