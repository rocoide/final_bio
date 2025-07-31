global <- function(){
    seq1 <- descargar_y_leer_fasta()
    invisible(readline(prompt = "Presione Enter para continuar con la segunda proteína..."))
    seq2 <- descargar_y_leer_fasta()

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