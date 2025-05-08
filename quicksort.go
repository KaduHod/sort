package main

import (
	"fmt"
	"math/rand"
	"time"
)

func quickSort(arr *[]int, start, end int) {
    pivot := (*arr)[start]
    l := start
    h := end

    for l <= h {
        for (*arr)[l] < pivot {
            l++
        }
        for (*arr)[h] > pivot {
            h--
        }
        if l <= h {
            (*arr)[l], (*arr)[h] = (*arr)[h], (*arr)[l]
            l++
            h--
        }
    }
    if start < h {
        quickSort(arr, start, h)
    }
    if l < end {
        quickSort(arr, l, end)
    }
}
func main() {
	rand.Seed(time.Now().UnixNano())

	// Criando um array de 500 elementos com valores únicos de 1 a 500
	arr := []int{10,1,9,7,3,5,6}
    quickSort(&arr, 0, len(arr) -1)
    fmt.Println(arr)
}
