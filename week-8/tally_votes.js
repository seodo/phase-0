// Tally Votes in JavaScript Pairing Challenge.
// I worked on this challenge with Matthew Baquerizo
// This challenge took me [3] hours.
// These are the votes cast by each student. Do not alter these objects here.
var votes = {  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }}

// Tally the votes in voteCount.

var voteCount = {  president: {},  vicePresident: {},  secretary: {},  treasurer: {}}

/* The name of each student receiving a vote for an office should become a propertyof the respective office in voteCount.  After Alex's votes have been tallied,voteCount would be ...  var voteCount = {    president: { Bob: 1 },    vicePresident: { Devin: 1 },    secretary: { Gail: 1 },    treasurer: { Kerry: 1 }  }*//* Once the votes have been tallied, assign each officer position the name of thestudent who received the most votes. */

var officers = {  president: undefined,  vicePresident: undefined,  secretary: undefined,  treasurer: undefined}

// Pseudocode
// FOR name IN votes,
// set a counter at 0
// FOR each position, count how many times each name occurs.
// Record number of votes into voteCount variable as "name" : (number of votes)
// __________________________________________

// Initial Solution
var presidentVotes = [];
for (var i in votes) {
  presidentVotes.push(votes[i].president);
}
// console.log(presidentVotes);

var presidentVotesCount = {};
for (i in presidentVotes){
  presidentVotesCount[presidentVotes[i]] = 0;
}
// console.log(presidentVotesCount);

for (i in presidentVotes){
  for(var name in presidentVotesCount){
    if(presidentVotes[i] === name){
      presidentVotesCount[presidentVotes[i]] ++;
    }
  }
}
// console.log(presidentVotesCount)

var vicePresidentVotes = [];
for (var i in votes) {
  vicePresidentVotes.push(votes[i].vicePresident);
}
// console.log(vicePresidentVotes);

var vicePresidentVotesCount = {};
for (i in vicePresidentVotes){
  vicePresidentVotesCount[vicePresidentVotes[i]] = 0;
}
for (i in vicePresidentVotes){
  for(var name in vicePresidentVotesCount){
    if(vicePresidentVotes[i] === name){
      vicePresidentVotesCount[vicePresidentVotes[i]] ++;
    }
  }
}


var secretaryVotes = [];
for (var i in votes) {
  secretaryVotes.push(votes[i].secretary); 
}
// console.log(secretaryVotes);
var secretaryVotesCount = {};
for (i in secretaryVotes){
  secretaryVotesCount[secretaryVotes[i]] = 0;
}
for (i in secretaryVotes){
  for(var name in secretaryVotesCount){
    if(secretaryVotes[i] === name){
      secretaryVotesCount[secretaryVotes[i]] ++;
    }
  }
}

var treasurerVotes = [];
for (var i in votes) {
  treasurerVotes.push(votes[i].treasurer); 
}
// console.log(treasurerVotes);
var treasurerVotesCount = {};
for (i in treasurerVotes){
  treasurerVotesCount[treasurerVotes[i]] = 0;
}
for (i in treasurerVotes){
  for(var name in treasurerVotesCount){
    if(treasurerVotes[i] === name){
      treasurerVotesCount[treasurerVotes[i]] ++;
    }
  }
}

voteCount.president = presidentVotesCount;
voteCount.vicePresident = vicePresidentVotesCount;
voteCount.secretary = secretaryVotesCount;
voteCount.treasurer = treasurerVotesCount;

console.log(voteCount);

// for (var  in voteCount.president){
//   var max = 0;
//   for (var name in voteCount.position){
//     if(voteCount.position.name > max){
//       max = voteCount.position.name;
//     }
//   }
// }

for (var position in voteCount){
  var counter = 0;
  for (var name in voteCount[position]){
    var votes = voteCount[position][name];
    if (votes > counter){
      counter = votes;
      officers[position] = name;
    }
  }
}
console.log(officers)





// __________________________________________
// Reflection
/*


What did you learn about iterating over nested objects in JavaScript?
It's a bit more confusing and difficult given the different notation styles between Ruby 
and JS.
Were you able to find useful methods to help you with this?
-No. We tried working with pure logic and applying that to our code.
What concepts were solidified in the process of working through this challenge?
-I think I need more practice with nested objects. As you can see above, our solution 
was a bit repetitive because we used the same code block for each position, rather than
combining all of them. I intend to work on this some more...

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)