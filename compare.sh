#!/bin/bash

# Cores para saída
GREEN="\033[0;32m"
BLUE="\033[0;34m"
RESET="\033[0m"

echo -e "${BLUE}Executando quicksort.php...${RESET}"
start_php=$(date +%s.%N)
php quicksort.php
end_php=$(date +%s.%N)
runtime_php=$(echo "$end_php - $start_php" | bc)

echo -e "${BLUE}\nBuildando go ... ${RESET}"
go build .
echo -e "${BLUE}\nExecutando quicksort.go...${RESET}"
start_go=$(date +%s.%N)
./quicksort
#go run quicksort.go
end_go=$(date +%s.%N)
runtime_go=$(echo "$end_go - $start_go" | bc)

echo
echo -e "${GREEN}Tempo de execução:${RESET}"
echo "PHP: $runtime_php segundos"
echo "Go:  $runtime_go segundos"

# Comparação
if (( $(echo "$runtime_php < $runtime_go" | bc -l) )); then
    echo -e "${GREEN}PHP foi mais rápido.${RESET}"
elif (( $(echo "$runtime_php > $runtime_go" | bc -l) )); then
    echo -e "${GREEN}Go foi mais rápido.${RESET}"
else
    echo -e "${GREEN}Empate técnico.${RESET}"
fi

