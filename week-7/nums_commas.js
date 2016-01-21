// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Linda Ho

// Pseudocode



// Initial Solution
function addComma(number) {
    var length = number.toString().length
    var num_of_commas = Math.floor(length/3)
    var num_array = number.toString().split("")
     if (length <= 3)
       return number;
     else if (length % 3 == 1)
       {for(var i = 1; i < length + num_of_commas; i += 4)
       num_array.splice(i, 0, ",");
       return num_array.join("");}
     else if (length % 3 == 2)
       {for(var i = 2; i < length + num_of_commas; i += 4)
        num_array.splice(i, 0, ",");
        return num_array.join("");}
     else (length % 3 == 0)
       {for(var i = 3; i < (length + (num_of_commas-1)); i += 4)
        num_array.splice(i, 0, ",");
        return num_array.join("");}
}


​
​
// Your Own Tests (OPTIONAL)
​
console.log(addComma(100))
console.log(addComma(1000))
console.log(addComma(10010))
console.log(addComma(100101))
console.log(addComma(1001012))
console.log(addComma(1001012232))
console.log(addComma(100101223432435325252))


// Refactored Solution

function addComma(number) {
    var length = number.toString().length
    var num_of_commas = Math.floor(length/3)
    var num_array = number.toString().split("")
     if (length <= 3) 
       return number;
     switch (length % 3) {
  case 1:
    for(var i = 1; i < length + num_of_commas; i += 4)
       num_array.splice(i, 0, ",");
       i += 4
       return num_array.join("");
    break;
  case 2:
     for(var i = 2; i < length + num_of_commas; i += 4)
       num_array.splice(i, 0, ",");
       i += 4
       return num_array.join("");
    break;
  case 0:
    for(var i = 3; i < (length + (num_of_commas-1)); i += 4) 
       num_array.splice(i, 0, ",");
       i += 4
       return num_array.join("");
​
    break;
 } 
}


// Your Own Tests (OPTIONAL)



/*
// Reflection
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
The approach was similar to how I approach challenges in Ruby. However, translating ideas into working code was a bigger issue.

What did you learn about iterating over arrays in JavaScript?
-The differences in syntax between JS and Ruby presented technical issues that took a long time for me and my partner
to fix.

What was different about solving this problem in JavaScript?
-Not having access to numerous methods like in Ruby forced us to be creative and to do a lot of trial and error. Getting
the proper syntax down was also a challenge.

What built-in methods did you find to incorporate in your refactored solution?
- We used the Math.floor method to return a whole number after division. Additionally,
we incorporated the toString method, join method, splice method, and split method.

*/