function sum(array_of_vals) {
	var container = 0;
	for (var counter = 0; counter < array_of_vals.length; counter++) {
		container += array_of_vals[counter];
	}
	return container;
}

function median(array_of_vals) {
	array_of_vals.sort()
	if (array_of_vals.length % 2 != 0) {
		var median_index = Math.floor(array_of_vals.length/2);
		return array_of_vals[median_index];
	} else {
		var median_index = array_of_vals.length/2;
		return (array_of_vals[median_index] + array_of_vals[median_index-1])/2;
	}
}

function pony(){
	console.log("      ./|,,/|");
	console.log("     <   o o)")
	console.log("    <\\ (    |")
	console.log("   <\\\\  |\\  |")
	console.log("  <\\\\\\  |(__)")
	console.log(" <\\\\\\\\  |")
}