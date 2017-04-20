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
