# QuickSort Benchmark

Um projeto simples para comparar o desempenho do algoritmo QuickSort implementado em PHP e Go.

## O que este projeto faz

Este projeto executa implementações do algoritmo QuickSort em duas linguagens diferentes (PHP e Go) e compara o tempo de execução de cada uma. O script de benchmark (`benchmark.sh`) automatiza o processo de:

1. Executar a implementação em PHP
2. Compilar e executar a implementação em Go
3. Medir o tempo de execução de cada implementação
4. Comparar os resultados e informar qual linguagem foi mais rápida

## Pré-requisitos

Para executar este benchmark, você precisa ter instalado:

- PHP
- Go
- Bash
- Utilitário `bc` (para cálculos matemáticos em linha de comando)

## Como executar

1. Certifique-se de que os arquivos `quicksort.php` e `quicksort.go` estão no mesmo diretório que o script `benchmark.sh`

2. Dê permissão de execução ao script de benchmark:
   ```
   chmod +x benchmark.sh
   ```

3. Execute o script:
   ```
   ./benchmark.sh
   ```

4. O script exibirá os tempos de execução para cada implementação e indicará qual foi mais rápida.

## Arquivos do projeto

- `quicksort.php`: Implementação do algoritmo QuickSort em PHP
- `quicksort.go`: Implementação do algoritmo QuickSort em Go
- `benchmark.sh`: Script que executa ambas as implementações e compara o desempenho

## Interpretando os resultados

Ao final da execução, o script mostrará:
- O tempo de execução da implementação em PHP (em segundos)
- O tempo de execução da implementação em Go (em segundos)
- Uma declaração informando qual implementação foi mais rápida

Note que os resultados podem variar dependendo do hardware, da carga do sistema e de outros fatores.
