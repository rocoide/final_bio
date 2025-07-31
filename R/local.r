local <- function(){
    seq1 <- descargar_y_leer_fasta()
    invisible(readline(prompt = "Presione Enter para continuar con la segunda proteína..."))
    seq2 <- descargar_y_leer_fasta()

    alignment <- pairwiseAlignment(seq1, seq2,
                                substitutionMatrix = NULL,
                                gapOpening = 20,
                                gapExtension = 25,
                                scoreOnly = FALSE,
                                type = "local")
    # Match: +5
    # Mismatch: -4

    # Realizar alineamiento local tipo Smith-Waterman
    cat("\n\n------------- MOSTRAR ALINEAMIENTO LOCAL ------------\n")
    print(alignment)
    cat("-----------------------------------\n\n")
}