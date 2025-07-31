dotplot <- function(){
    window <- as.integer(readline(prompt = "Ingrese un tamaño para la ventana: "))

    rec_one <- descargar_y_leer_fasta()
    invisible(readline(prompt = "Presione Enter para continuar con la segunda proteína..."))
    rec_one <- descargar_y_leer_fasta()

    # Longitudes de las secuencias
    cat("Longitud de secuencia 1: ", nchar(rec_one), "\n")
    cat("Longitud de secuencia 2: ", nchar(rec_two), "\n")

    # Convertir secuencias a string y mayúsculas (por si acaso)
    seq1 <- toupper(as.character(rec_one))
    seq2 <- toupper(as.character(rec_two))

    # Crear listas vacías (equivalente a dicts)
    dict_one <- list()
    dict_two <- list()

    # Función para construir el diccionario de subsecuencias
    build_window_dict <- function(seq, window) {
        dict <- list()
        for (i in 1:(nchar(seq) - window + 1)) {
            section <- substr(seq, i, i + window - 1)
            if (!is.null(dict[[section]])) {
                dict[[section]] <- c(dict[[section]], i)
            } else {
                dict[[section]] <- c(i)
            }
        }
        return(dict)
    }

    # Construir diccionarios
    dict_one <- build_window_dict(seq1, window)
    dict_two <- build_window_dict(seq2, window)

    # Obtener las subsecuencias comunes
    common_sections <- intersect(names(dict_one), names(dict_two))
    cat("Cantidad de subsecuencias comunes:", length(common_sections), "\n")

    # Crear dataframe con las coincidencias
    dots <- data.frame(x = integer(), y = integer())

    for (section in common_sections) {
        for (i in dict_one[[section]]) {
            for (j in dict_two[[section]]) {
                dots <- rbind(dots, data.frame(x = i, y = j))
            }
        }
    }

    if (nrow(dots) > 0) {
        # Crear el gráfico
        grafico <- ggplot(dots, aes(x = x, y = y)) + 
            geom_point(size = 1) +
            scale_y_reverse() +
            labs(title = paste("Dotplot - window =", window),
                x = "Secuencia 1",
                y = "Secuencia 2") +
            theme_minimal()

        # Guardar gráfico como imagen PNG
        archivo_salida <- paste0("dotplot_window_", window, ".png")
        ggsave(filename = archivo_salida, plot = grafico, width = 6, height = 6, dpi = 300)
        cat("Gráfico guardado como:", archivo_salida, "\n")
    } else {
        cat("No se encontraron subsecuencias comunes para graficar.\n")
    }
}