const test = { HTML: 17895, JavaScript: 10960, CSS: 7941 }
const arr = [4,2,8,7,1,5,3,6]
const arr2 = [45,2,33,9,5,6,1000,500];
const quicksort = (arr, start = 0, end) => {
    let pivot = arr[start]
    let low = start;
    let high = end;
    //const curr_arr = arr.slice(start, end)
    //if(curr_arr.length <= 1) return;
    while(low <= high){
        let valor_low, valor_high = 0
        while(arr[low] < pivot) low++;
        valor_low = arr[low]
        while(arr[high] >= pivot) high--;
        //if (high < 0) return;
        valor_high = arr[high]
        if(low <= high) {
            const copy_low = arr[low]
            arr[low] = arr[high]
            arr[high] = copy_low
            console.log("TROCOU!!")
            low++;
            high--;
        }
    }

    if(start < high) quicksort(arr, start, high)
    if(low < end) quicksort(arr, low, end)
}
quicksort(arr, 0 , arr.length - 1);console.log(arr)
//quicksort(arr2, 0 , arr2.length - 1);console.log(arr2)

