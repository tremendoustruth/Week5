// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a function that takes the array as an argument and returns this “outlier” N.

// Examples:

let sample1 = [2, 4, 0, 100, 4, 11, 2602, 36] //Should return: 11 (the only odd number)
let sample2 = [160, 3, 1719, 19, 11, 13, -21] //Should return: 160 (the only even number)

function outlierChecker(arr){
    let evens= 0
    let odds = 0
    for (num of arr){
        if(num%2===0){evens++}
        if(num%2===1){odds++}
    }
    console.log(evens, odds)
    if (evens>=2){
        for (num of arr){
            if(num%2===1){console.log(num)}
        }
    }
    if (odds>=2){
        for (num of arr){
            if(num%2===0){console.log(num)}
        }
    }
}
outlierChecker(sample2);