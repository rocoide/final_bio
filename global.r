global <- function(){
    # Leer las secuencias desde archivos FASTA
    seq1 <- readAAStringSet("./1MBN.fasta")[[1]]
    seq2 <- readAAStringSet("./alpha.faa")[[1]]

    # Realizar alineamiento global tipo Needleman-Wunsch
    alignment <- pairwiseAlignment(seq1, seq2,
                                    substitutionMatrix = "BLOSUM62",
                                    gapOpening = 1, 
                                    gapExtension = 0.1,
                                    scoreOnly = FALSE, 
                                    type = "global")

    data(BLOSUM62)
    cat("\n")
    print(BLOSUM62)

    cat("\n\n------------- MOSTRAR ALINEAMIENTO GLOBAL ------------\n")
    print(alignment)
    cat("-----------------------------------\n\n")
}