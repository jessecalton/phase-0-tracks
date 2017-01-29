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

// var longArray = ["long array", "longer array", "longest array"];
// var newArray = ["french fries", "oreos", "Canadian bacon", "gumballs"];

// function countLength(arr) {
//   var biggestNum = 0
//   var longestName = ""
//   for (i = 0; i <= arr.length - 1; i++) {
//     if (arr[i].length > biggestNum) {
//       biggestNum = arr[i].length;
//       longestName = arr[i]
//       }
      
//     }
//   console.log(longestName)
// }

// countLength(longArray);

// countLength(newArray);

// ---------------------

// PSEUDOCODE
// Make hashes with names and ages
// Figure out how to manipulate items in a hash
// Make a function that takes items of the same key and 
// compares them.
//    If the two items are identical, return true
//    If not, go to the next two items in the next
//    key pair value. If those are identical, return true.
//    If no key value pairs match, return false


var hashMike = { name: "Mike", age: "26" }
var hashRoger = { name: "Roger", age: "32" }
var hashEd = { name: "Ed", age: "26" }

console.log(hashMike["age"] == hashEd["age"]);

function compareHashes(hash1, hash2){
  console.log(hash1);
  console.log(hash2);
  if (hash1["age"] == hash2["age"]){
  return true;
}  else if (hash1["name"] == hash2["name"]){
  return true;
}  else {
  return false
}
}

compareHashes(hashMike, hashEd)

// ----------------------
// Release 2
//
// PSEUDOCODE!
//
// Find the random number generator
// Create an array
// The integer we put in when we call our method will be the 
// amount of items in the array.
// The items will be comprised of 1 to 10 letters
//    We will need to iterate over the alphabet a random number
//    of times (1 to 10 times to be exact) and push those numbers
//    into a string.
// The random string we just created will get pushed into the array
// This method will loop as many times as our input tells us to.
// Return that array and make it a variable
// Run that variable in the longest word function

function wordGenerator(int){
  var newArray = [];
  var newString = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var stringLength = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  for (var i = 0; i < int; i++){
    newSL = (stringLength[Math.floor((Math.random() * 10) + 0)]);
    // console.log(newSL);
    newString = "";
    for (x = 0; x < newSL; x++){
      newString += alphabet[Math.floor((Math.random() * 25) + 0)];
      
    }
    // console.log(newString);
    newArray[i] = newString;
  }
return newArray
}
// Math.floor((Math.random() * 10) + 1);


wordGenerator(3)























