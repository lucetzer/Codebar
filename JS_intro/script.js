var name = "Lucy";
var aboutYou = "I'm from Australia";
var numberOfSessions = 1;

function output(name, aboutYou, numberOfSessions) {
	console.log("Hi! My name is " + name + ". " + "A couple of things about me " + aboutYou + ". I have attended " + numberOfSessions + " so far.");

	if (numberOfSessions === 0) {
		console.log("This is the first time I'm attending codebar!");
	} else {
		console.log("This is not my first time here. I <3 codebar!");
	}
}

output(name, aboutYou, numberOfSessions);