// Write a function that takes an array of words or phrases
// and returns the longest word or phrase in the array.

// PSUEDOCODE!
// Create an array of strings of differing lengths
// Return the values of the length of each string in
// the array.
// Get the index location of the highest value
//  Use a counter and keep counting up until it equals
//  the highest value.
//  Grab that value and use it to fetch the position
//  of that value in the array of string lengths.
// Use that index location and fetch the value from our
// original array.

var longArray = ["long array", "longer array", "longest array"];
var newArray = ["french fries", "oreos", "Canadian bacon", "gumballs"];

function countLength(arr) {
  var biggestNum = 0
  var longestName = ""
  for (i = 0; i <= arr.length - 1; i++) {
    if (arr[i].length > biggestNum) {
      biggestNum = arr[i].length;
      longestName = arr[i]
      }
      
    }
  console.log(longestName)
}

countLength(longArray);

countLength(newArray);