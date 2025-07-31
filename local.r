local <- function(){
    # Leer las secuencias desde archivos FASTA
    seq1 <- readAAStringSet("./1MBN.fasta")[[1]]
    seq2 <- readAAStringSet("./alpha.faa")[[1]]

    alignment <- pairwiseAlignment(seq1, seq2,
                                substitutionMatrix = NULL,
                                gapOpening = 20,
                                gapExtension = 25,
                                scoreOnly = FALSE,
                                type = "local")

    # Realizar alineamiento local tipo Smith-Waterman
    print("-----------------------------------")
    print("------------- MOSTRAR ALINEAMIENTO LOCAL ------------")
    print(alignment)
    print("-----------------------------------")
}