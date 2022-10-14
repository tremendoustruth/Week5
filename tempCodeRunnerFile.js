let sample1 = [2, 4, 0, 100, 4, 11, 2602, 36] //Should return: 11 (the only odd number)
let sample2 = [160, 3, 1719, 19, 11, 13, -21] //Should return: 160 (the only even number)

function outlierChecker(arr){

    let evens = 0
    let odds = 0
    while (evens <3 | odds<3){
        for (num of arr){
            // if (num%2===0){evens++}
            // else {odds++}
            console.log(evens)
        }
    }
}

outlierChecker(sample1);