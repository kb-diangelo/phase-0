// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Hanah Yendler
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution

for (student in votes) {
  voteCount.president[student] = 0;
  voteCount.vicePresident[student] = 0;
  voteCount.secretary[student] = 0;
  voteCount.treasurer[student] = 0;
}


for (student in votes) {
  var studentsVote = votes[student]; // the inner object of the "votes" structure
  var presidentVote = studentsVote.president;
  var vicePresidentVote = studentsVote.vicePresident;
  var secretaryVote = studentsVote.secretary;
  var treasurerVote = studentsVote.treasurer;
  voteCount.president[presidentVote] ++;
  voteCount.vicePresident[vicePresidentVote] ++;
  voteCount.secretary[secretaryVote] ++;
  voteCount.treasurer[treasurerVote] ++;
}


//Find the highest value in presidents
  var pFrontrunner = ""
  var pMaxVotes = 0;
  for (candidate in voteCount.president) {
    var candidatesVotes = voteCount.president[candidate]
    if (candidatesVotes > pMaxVotes) {
      pMaxVotes = candidatesVotes;
      pFrontrunner = candidate;
  }
}
officers.president = pFrontrunner;

//Find the highest value in vice presidents
  var vpFrontrunner = ""
  var vpMaxVotes = 0;
  for (candidate in voteCount.vicePresident) {
    var candidatesVotes = voteCount.vicePresident[candidate]
    if (candidatesVotes > vpMaxVotes) {
      vpMaxVotes = candidatesVotes;
      vpFrontrunner = candidate;
  }
}
officers.vicePresident = vpFrontrunner;

//Same with secretaries
  var sFrontrunner = ""
  var sMaxVotes = 0;
  for (candidate in voteCount.secretary) {
    var candidatesVotes = voteCount.secretary[candidate]
    if (candidatesVotes > sMaxVotes) {
      sMaxVotes = candidatesVotes;
      sFrontrunner = candidate;
  }
}
officers.secretary = sFrontrunner;

//Finally, treasurer
 var tFrontrunner = ""
 var tMaxVotes = 0;
  for (candidate in voteCount.treasurer) {
    var candidatesVotes = voteCount.treasurer[candidate]
    if (candidatesVotes > tMaxVotes) {
      tMaxVotes = candidatesVotes;
      tFrontrunner = candidate;
  }
}
officers.treasurer = tFrontrunner;

// __________________________________________
// Refactored Solution


// The part where I assign the offices to students could CERTAINLY have been made
// more DRY with a loop but I don't have time to implement that right now :(



// __________________________________________
// Reflection
/*
* What did you learn about iterating over nested objects in JavaScript?

I'm preeettty sure that while my solution works, it's not the answer that the assignment is 
really looking for. Instead of doing a loop inside a loop, I assigned a bunch of values to 
variables and used dot/bracket notation to access inner values in the object of objects. So 
I'm not sure I actually was able to practice iteration over nested objects. I will have to see
what other people came up with when I peer review.

* Were you able to find useful methods to help you with this?

Not really?

* What concepts were solidified in the process of working through this challenge?

How to use dot/bracket notation to get values stored in nested objects.

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