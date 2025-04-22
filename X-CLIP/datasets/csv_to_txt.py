def replace_commas_in_txt(input_file, output_file):
    # Lire le contenu du fichier val.csv
    with open(input_file, 'r') as infile:
        lines = infile.readlines()

    # Remplacer les virgules par des espaces sur chaque ligne
    modified_lines = [line.replace(',', ' ') for line in lines]

    # Écrire les lignes modifiées dans un nouveau fichier txt
    with open(output_file, 'w') as outfile:
        for line in modified_lines:
            outfile.write(line)

# Spécifier les noms des fichiers d'entrée et de sortie
input_file = 'val_hmdb51_c.csv'
output_file = 'val_hmdb51.txt'

# Appeler la fonction pour remplacer les virgules et enregistrer le nouveau fichier txt
replace_commas_in_txt(input_file, output_file)
