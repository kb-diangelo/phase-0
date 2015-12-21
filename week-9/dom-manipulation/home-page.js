// DOM Manipulation Challenge


// I worked on this challenge [by myself].


// Add your JavaScript calls to this page:

// Release 0: 

  document.getElementById("release-0").className = "done";

// Release 1:

  document.getElementById("release-1").style.display = "none";

// Release 2:

  document.getElementsByTagName("H1")[0].innerHTML = "I completed release 2.";


// Release 3:

	document.getElementbyId("release-3").style.backgroundColor = #955251;


// Release 4:

	document.getElementsByClassName("release-4").style.fontSize = 2em;

// Release 5:

	var release5 = document.getElementById("hidden");
	document.body.appendChild(release5.content.cloneNode(true));

/* Reflection

First of all I'm not sure that any of this worked. It looks right,
but none of the changes are showing up in my browser. Maybe once I
upload it to GitHub it might work?

What did you learn about the DOM?

I was able to review the concept that everything in the DOM is related
to other objects in the DOM - objects have parents and siblings. 
When you change a parent element you're also making changes to its 
children.

What are some useful methods to use to manipulate the DOM?

JS lets you manipulate objects in the DOM by selecting them by ID, class
or tag. It lets you change the styling by using .style, the text (innerHTML)
with .innerHTML, and class with .className.

*/