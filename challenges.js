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

//Create a Phone Number

// Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

// Example:

// createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
// The returned format must be correct in order to complete this challenge.

// Don’t forget the space after the closing parentheses!
//             0 1 2 3 4 5 6 7 8 9
let sample3 = [1,2,3,4,5,6,7,8,9,0];
let sample4 = [9,8,7,6,5,4,3,2,1,0];

function phoneCreater(arr){
    let areacode = ""
    for(i=0; i<3; i++){
       areacode+= arr[i]
    }
    console.log(areacode)
 
    let chunk1=""
    for (i=3; i<6; i++){
        chunk1+=arr[i]
        
    }
    console.log(chunk1)

    let chunk2=""  
    for (i=6; i<arr.length; i++){
        chunk2+=arr[i]
    }
    console.log(chunk2)

    return "(" + areacode + ")" + " " + chunk1 + "-" + chunk2

}
console.log(phoneCreater(sample4))

//additional solution:
let sample5 = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
const createNumber = (arr) => {
   let number = '' //iniitalizes number string
   arr = arr.map(String); //converts each element in the array into a string using the .map method, which calls a function for each element in an array.
   number += `(${arr[0]+arr[1]+arr[2]}) ` //area code chunk with space
   number += `${arr[3] + arr[4] + arr[5]}-`//chunk1 with dash
   number += arr[6] + arr[7] + arr[8] + arr[9] //chunk 2 (does not need $ because no dashes or spaces to be added and elements already strings)
   return number
}
console.log(createNumber(sample5))

//regex example - more study  
const regex_phone = (arr) => {

    let format = arr.join("").match(/(\d{3})(\d{3})(\d{4})/); //.match() for regex
    console.log(format)
    return `(${format[1]})-${format[2]}-${format[3]}`
}

console.log(regex_phone([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]));