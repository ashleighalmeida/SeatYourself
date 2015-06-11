// commment one line
/* multi
line
commment
*/

// BUILT IN FUNCTIONS

// CORE OBJECTS

// arrays yo

// iterate:

var colors = ['red', 'blue', 'yellow']
colours.forEach(function(colour) {
	console.log(colour)
});

 console.log (i + ' is even');
 

//or

for (var i = 0; i < colours.length; i++) {
	console.log(colours[i]);
}

//date

var date = new Date();

// flow control

// if

var time = 5;
var greeting = '';

if (time < 10) {
greeting = 'Good morning';

} else {

greeting = 'Good evening';

}

console.log(greeting);

//  switch

var today = new Date().getDay();
var dayInWords;
switch (today) {
	case 0:
	dayinWords = 'Sunday'
	break;
	case 1:
	dayInWords = 'Monday';
	break;
	case 2:
	dayInWords = 'Tuesday';
	break;
}

console.log('Today is ' + dayInWords)

// LOOPS

// for

for (var i =0; i <= 20; i++) {
	if (1 % 2 ==0) {
		console.log (i + ' is even');
	} else {
		console.log(i + ' is odd');
	}
console.log(i)

// do while

var num = 1
do {
	num++;
	console.log(num)
} while (num < 10);

// while
var num = 1;
while(num < 10) {
	num++
	console.log(num);
}

// FUNCTIONS

// named function

function square(number) {
	return number * number;
}

var value = square(4)
console.log(value);

//or

console.log(square(4));

//

function tellFortune(jobTitle, place, partner, numKids) {
	var future = 'You will be a  ' + jobTitle + ' in ' + place +
	' and married to' + partner + ' kids';
	return future;
}

tellFortune('Waiter', 'NY', 'Bob Saget', '35');