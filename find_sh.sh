
DIR=$(pwd)


if [ -z "$(ls -A "$DIR")" ]; then
    echo "O diretório está vazio."
    exit 0
fi

# Lista todos os arquivos .sh no diretório
echo "Arquivos .sh encontrados no diretório $DIR:"

for file in "$DIR"/*.sh; do
    if [ -f "$file" ]; then
        echo "Arquivo: $(basename "$file")"
    else
        echo "$(basename "$file") não há arquivos .sh."
    fi
done