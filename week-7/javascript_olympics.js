 // JavaScript Olympics

// I paired Baron Kwan on this challenge.

// This challenge took me [1] hours.


// Warm Up



// Bulk Up

function addWin(array) {
  for (var i=0;i< array.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event;
    console.log(array[i].win);
  }
}

var Michael = {name: "Michael", event: "Singles"};
var Claire = {name:"Claire", event: "doubles"};
var myArray = [Michael, Claire];
addWin(myArray);

// Jumble your words
function jumble(string) {
 return string.split("").reverse().join("");
  
}
var myString = "hello"
console.log(jumble(myString));


// 2,4,6,8
function evenOnly(array) {
  var newArray = [];
  for (var i =0; i <array.length; i++) {
     if (array[i]%2==0)
       newArray.push(array[i]);
  }
  return newArray;
}

var sample = [1,2,3,4,5,6]
console.log(evenOnly(sample))

// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
  
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
 /*
What JavaScript knowledge did you solidify in this challenge?
I solidified my understanding of how to work with nested arrays/objects in Javascript, 
including how to iterate over them. I'm also getting more used to Javascript syntax, especially
the importance of endless semicolons.

What are constructor functions?
- Constructor functions are a way to create functions in Javascript. We can 
set up values for variables when creating functions.

How are constructors different from Ruby classes (in your research)?
-In Ruby we use an initialize method, whereas in JS we use the keyword "this".


*/


