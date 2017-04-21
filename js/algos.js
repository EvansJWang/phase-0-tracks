// Create a function that takes an array of phrases
// 1. Determine which is the longest word or phrase in array
// 1a. check the length of a word against the next word in the array
// 2. store the longer  as a variable
// 3. check every word after that against that variable storing the new longest word if there is one as the new longest word.
// 4. return the word or phrase 
var arr = ["long phrase","longest phrase","longer phrase"]

function lengthChecker(arr) {
  var longestWord = ""
  var lengthOfWord = 0
    for (var i = 0; i < arr.length; i++){
     if (arr[i].length > lengthOfWord){
        longestWord = arr[i];
        lengthOfWord = arr[i].length;
      }
    }
     return longestWord;
}


// // Create a function that will search the first object's keys with all the keys of the second object 

var example = {name: "Steven", age: 54};
var example1 = {name: "Tamir", age: 54};

function keyValueMatch(object1, object2) {
  var match = false
  for (var i = 0; i < Object.keys(object1).length; i++ ) {
      for (var ii = 0; ii < Object.keys(object2).length; ii++) {
      if (Object.keys(object1)[i] == Object.keys(object2)[ii]) {match = true};
      return match
      }
  }    
}


// console.log(Object.keys(example1).length)
// console.log(Object.keys(example1))
// console.log(Object.keys(example1)[0]);
// match(example,example1);
// console.log(Object.keys(example1))


// create a function that takes a random letter a random number of times and makes it a word 
// store that word into an array a certain number of times

function makeArray(numberOfTimes){
  var array = [];
  for (var i = 0; i < numberOfTimes; i++) {
    var randomString = "";
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var randomNum = Math.floor((Math.random() * 10) + 1);
      for (var ii = 0; ii < Math.floor((Math.random() * 100) + 1); ii+=5) {
         randomString += alphabet[Math.floor((Math.random() * 25) + 1)];}
    array[i] = randomString;
    }
    return array
  }
// create a random array with function makeArray
// print it  then feed it into lengthChecker method
  var doublecheck = makeArray(10)
  console.log(doublecheck)
  console.log(lengthChecker(doublecheck))


