<?php
function quick_sort(array &$arr, int $start, int $end) {
    $pivot = $arr[$start];
    $l = $start;
    $h = $end;
    while ($l <= $h) {
        while($arr[$l] < $pivot){
            $l++;
        }
        while($arr[$h] > $pivot) {
            $h--;
        }
        if ($l <= $h) {
            [$arr[$l], $arr[$h]] = [$arr[$h], $arr[$l]];
            $l++;
            $h--;
        }
    }
    if ($start < $h) {
        quick_sort($arr, $start, $h);
    }
    if ($l < $end) {
        quick_sort($arr, $l, $end);
    }
}

$arr = [10,1,9,7,3,5,6];

quick_sort($arr, 0, count($arr) - 1);

print_r($arr);
