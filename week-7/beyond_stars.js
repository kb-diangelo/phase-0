// IT CAME FROM BEYOND THE STARS
// A ONE-DAY-HOPEFULLY-PLAYABLE GAME BY K.B. DiAngelo

/*
Pseudcode:
1. Get a name for our intrepid scientist
2. Print out some background to the console
3. Establish the choices WATER, SIT or IGNORE
4. IF WATER
	4.1 Set the Star Thing's type to vegetable
	4.2 Offer a choice of fertilizer: dried blood, MiracleGro, or compost
5. IF SIT (on)
	5.1 Set the Star Thing's type to animal
	5.2 Offer a food choice of: lab mice, filet mignon, or garden salad
6. IF IGNORE
	6.1 print a random statement about how bored you are watching this rock to the console
	6.2 offer first choice again (step 3)
7. IF the thing was fed dried blood or lab mice set its nature to violent
8. IF the thing was fed MiracleGro or filet mignon set its nature to civilized
9. IF the thing was fed compost or garden salad set its nature to peaceful
10. As the finale, print out the thing's type and nature

*/

console.log("IT CAME FROM BEYOND THE STARS");
console.log("----------------------------------")

var star_thing = {};
var scientist = {};

var random_bored_statements = [
"You spend the days staring at the lifeless hunk of rock.",
"Did you see it move just now? No, you're just losing it from boredom.",
"You feel an oppressive pressure in your chest, but you chalk it up to indigestion.",
"You twiddle your thumbs in the lab while the THING sits... and waits.",
"You put the THING from your mind and go get your fourth cup of coffee."
];

var introduction = function(name) {
	console.log("You are a scientist studying life beyond our own world. Your name is...");
	scientist.name = name;
	console.log("Dr. " + scientist.name + "!");
	console.log("Today is an unusual day. Today your superiors have entrusted you with something...");
	console.log("THAT CAME FROM BEYOND THE STARS!");
	console.log("It looks like a rock but you know it could be so much more.");
	console.log("How will you treat this treasure... from BEYOND THE STARS?");
	firstChoice();
}

var firstChoice = function() {
	console.log("Will you WATER it, SIT on it, or IGNORE it?");
}

var secondChoice = function(first_choice) {
	console.log("-------------");
	switch(first_choice){
		case "WATER":
			star_thing.type = "vegetable";
			console.log("You have chosen to WATER the THING FROM BEYOND THE STARS.");
			console.log("Instantly, roots begin to grow from the formerly lifeless hunk of space rock!");
			console.log("What fertilizer will you use on the PLANT FROM BEYOND THE STARS?");
			console.log("DRIED BLOOD, MIRACLE-GRO, or COMPOST?");
		break;
		case "SIT":
			star_thing.type = "animal";
			console.log("You have chosen to SIT on the THING FROM BEYOND THE STARS.");
			console.log("At first, nothing happens, but as the days pass you begin to feel it shift and move!");
			console.log("Peeping noises are coming from inside!");
			console.log("It hatches into a creature unlike you've ever seen!");
			console.log("What will you feed this marvel, the CREATURE FROM BEYOND THE STARS?")
			console.log("LAB MICE, FILET MIGNON, or a GARDEN SALAD?")
		break;
		case "IGNORE":
			console.log("You have chosen to IGNORE the THING FROM BEYOND THE STARS.");
			console.log(random_bored_statements[Math.floor(Math.random() * 5)]);
			firstChoice();
		break;
	}
}

var thirdChoice = function(second_choice) {
	console.log("-------------");
	switch(second_choice){
		case ("DRIED BLOOD" || "LAB MICE"):
			star_thing.nature = "violent";
			console.log("You feed your wonderous charge " + second_choice.toLowerCase() + ".");
			console.log("Soon it grows big and strong, and sprouts sharp fangs.");
			break;
		case ("MIRACLE-GRO" || "FILET MIGNON"):
			star_thing.nature = "civilized";
			console.log("You give your marvelous charge helpings of " + second_choice.toLowerCase() + ".");
			console.log("You find it is drawn to cravats and monocles.");
			break;
		case ("COMPOST" || "GARDEN SALAD"):
			star_thing.nature = "peaceful";
			console.log("You feed your amazing charge " + second_choice.toLowerCase() + ".");
			console.log("It grows beautiful and serene.");
			break;
		}
}

var finale = function(){
	console.log("-------------");
	console.log("Your " + star_thing.nature + " " + star_thing.type + " is all grown up now.");
	console.log("You, Dr. " + scientist.name + " are a scientific genius!");
}


//----------------- Calls to Make It Run

introduction("Kristy P. Jones");
secondChoice("IGNORE");
secondChoice("IGNORE");
secondChoice("IGNORE");
secondChoice("WATER");
thirdChoice("DRIED BLOOD");
finale();

/*
* What was the most difficult part of this challenge?

The most difficult part of this challenge was being creative and telling a good story.
The actual code I used was very simple. I would like to learn how to make dynamic web 
pages and make this game actually playable but I didn't have time this week to do more
than the minimum.

* What did you learn about creating objects and functions that interact with one another?

In JavaScript it is easy to manipulate objects using functions. Simply use dot notation
to access/create the properties of an object and assign them to whatever you want.

* Did you learn about any new built-in methods you could use in your refactored solution? 
If so, what were they and how do they work?

My program is VERY simple. The only built-in methods I needed was to find a random
number between 0 and 4 to print out a random statement of boredom if you chose to ignore
the space rock. To do this I used Math.floor(Math.random * 5). I had to do this because
Math.random only chooses a random decimal between 0 and 1. Multiplying that by 5 and then
using Math.floor to round down gave me what I wanted.

* How can you access and manipulate properties of objects?

Dot notation, as discussed above.

*/