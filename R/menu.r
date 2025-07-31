menu_principal <- function() {
    repeat {
        cat("\n--- MENÚ PRINCIPAL ---\n")
        cat("1. CIF\n")
        cat("2. PDB\n")
        cat("3. Global\n")
        cat("4. Local\n")
        cat("5. Dotplot\n")
        cat("6. Salir\n")

        opcion <- readline(prompt = "Selecciona una opción (1-6): ")

        tryCatch({
            if (opcion == "1") {
                CIF()
            } else if (opcion == "2") {
                PDB()
            } else if (opcion == "3") {
                global()
            } else if (opcion == "4") {
                local()
            } else if (opcion == "5") {
                dotplot()
            } else if (opcion == "6") {
                cat("¡Hasta luego!\n")
                break
            } else {
                cat("Opción no válida. Intentá de nuevo.\n")
            }
        }, error = function(e) {
            cat("⚠️ Error al ejecutar la opción:", conditionMessage(e), "\n")
        })
    }
}