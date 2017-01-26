// Reversing the string "hello" to make it say "olleh"
// Take every letter of "hello" and print it backwards in the console.
// Split the letters apart
// Have the first letter and last letter switch places, the second letter and 
// second to last letter switch places, and the third/middle letter stay
// the same.

function reverseString(str) {
  var newStr = ""
  for (i = str.length - 1; i >= 0; i--){
    newStr += str[i];
  }
  return newStr
}

var funTimes = reverseString("lemonade")


if (1 == 1) {
  console.log(funTimes);
}