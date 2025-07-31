PDB <- function(){
    # Verificamos y descargamos la estructura PDB con ID "1mbn"
    pdb <- read.pdb("1mbn")

    # Verificamos los datos principales
    print(pdb)
}