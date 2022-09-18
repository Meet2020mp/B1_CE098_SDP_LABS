import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

enum AudioState {
  playing,
  paused,
  stopped,
}

void main(List<String> arguments) {
  /*
  //Chapter 4: Control Flow
  //Making comparisons
  
  //Boolean values
  // const bool no = false;
  // const bool yes = true;
  // this code will work perfectly. 
  // const yes = true; 
  // const no = false;
  // this code will work perfectly. 
*/

/*
  //Boolean operators
  //Testing equality
  // const doesOneEqualTwo = (1 == 2);
  // print(doesOneEqualTwo);
  // this code will work perfectly. 
  // const doesOneEqualTwo = 1 == 2;
  // print(doesOneEqualTwo);
  // this code will work perfectly. 
//Testing inequality
// const doesOneNotEqualTwo = (1 != 2);
// print(doesOneNotEqualTwo);//true
// const alsoTrue = !(1 == 2);
// print(alsoTrue);//true
  // this code will work perfectly. 
//Testing greater and less than
// const isOneGreaterThanTwo = (1 > 2);
// const isOneLessThanTwo = (1 < 2);
// print(isOneGreaterThanTwo);
// print(isOneLessThanTwo);
  // this code will work perfectly. 
// print(1 <= 2); // true 
// print(2 <= 2); // true
  // this code will work perfectly. 
// print(2 >= 1); // true 
// print(2 >= 2); // true
  // this code will work perfectly. 
*/
/*
//boolean logic
//and operator
// const isSunny = true; 
// const isFinished = true;
// const willGoCycling = isSunny && isFinished;
// print(willGoCycling);
// this code will work perfectly. 
// const willTravelToAustralia = true; 
// const canFindPhoto = false;
// const canDrawPlatypus = willTravelToAustralia || 
// print(canFindPhoto);
// this code will work perfectly. 
// const andTrue = 1 < 2 && 4 > 3;
// const andFalse = 1 < 2 && 3 > 4;
// const orTrue = 1 < 2 || 3 > 4;
// const orFalse = 1 == 2 || 3 == 4;
// print(andTrue);
// print(andFalse);
// print(orTrue);
// print(orTrue);
// this code will work perfectly. 
// print(3 > 4 && 1 < 2 || 1 < 4);
// this code will work perfectly. 
// print(false && true || true);
// this code will work perfectly. 
//Overriding precedence with parentheses
// print( 3 > 4 && (1 < 2 || 1 < 4));
// print((3 > 4 && 1 < 2) || 1 < 4);
*/
/*
//String equality
// const guess = 'dog';
// const dogEqualsCat = guess == 'cat';
// print(guess);
// print(dogEqualsCat);
// this code will work perfectly. 
*/

/*
//Mini-exercises
// const myAge=19;
// const isTeenager=(myAge>13 && myAge<19);
// print(myAge);
// print(isTeenager);
// const maryAge=30;
// const bothteenagerd=(maryAge>13 && maryAge<19 && isTeenager);
// print(bothteenagerd);
// const reader="DAKSHAY";
// const ray=reader=="Ray Wenderlich";
print(ray);
// this code will work perfectly. 
*/

/*
//The if statement
// if (2 > 1) {
// print('Yes, 2 is greater than 1.');
// }
// this code will work perfectly. 
//The else clause
// const animal="lion";
// if (animal == 'Cat' || animal == 'Dog') { 
// print('Animal is a house pet.');
// } else {
// print('Animal is not a house pet.');
// }
// this code will work perfectly. 
//Else-if chains
// const trafficLight = 'yellow';
// var command = '';
// if (trafficLight == 'red') { 
// command = 'Stop';
// } else if (trafficLight == 'yellow') { 
// command = 'Slow down';
// } else if (trafficLight == 'green') { 
// command = 'Go';
// } else {
// command = 'INVALID COLOR!';
// }
// print(command);
// this code will work perfectly. 
*/

/*
//Variable scope
// const global = 'Hello, world';
// void main() {
// const local = 'Hello, main';
// if (2 > 1) {
// const insideIf = 'Hello, anybody?';
// print(global);
// print(local);
// print(insideIf);
// }
// print(global);
// print(local);
// print(insideIf); // Not allowed!
// }//Error: Undefined name 'insideIf'.
*/
/*
//The ternary conditional operator
//syntax:(condition) ? valueIfTrue : valueIfFalse;
// const score = 83;
// String message;
// if (score >= 60) {
// message = 'You passed';
// } else {
// message = 'You failed';
// }
// print(message);
// this code will work perfectly. 
//example of ternary operator
// const score = 83;
// const message = (score >= 60) ? 'You passed': 
// 'You failed';
// this code will work perfectly. 
*/

/*
//Mini-exercises
// const myage=19;
// const isTeenager=(myage>13 && myage<19);
// if (isTeenager==true) {
//   print("teenager");
// }
// else{
//  print("not teenager");
// }
// (myage>13 && myage<19)?print("teenager"):print(" not teenager");
*/

/*
//Switch statements
//syntax :
// switch (variable) { 
// case value1:
// // code 
// break;
// case value2:
// // code 
// break;
// ...
// default:
// // code
// }
//Replacing else-if chains
//if else code:
// const number = 3; 
// if (number == 0) {
// print('zero');
// } else if (number == 1) { 
// print('one');
// } else if (number == 2) { 
// print('two');
// } else if (number == 3) { 
// print('three');
// } else if (number == 4) { 
// print('four');
// } else {
// print('something else');
// }
// this code will work perfectly. 
//switch case:
switch (number) {
case 0: 
print('zero');
break;
case 1: 
print('one');
break;
case 2: 
print('two');
break;
case 3: 
print('three');
break;
case 4: 
print('four');
break;
default:
print('something else');
}
// this code will work perfectly. 
*/

/*
//Switching on strings
// const weather = 'cloudy';
// switch (weather) {
// case 'sunny':
// print('Put on sunscreen.');
// break;
// case 'snowy':
// print('Get your skis.');
// break;
// case 'cloudy':
// case 'rainy':
// print('Bring an umbrella.');
// break;
// default:
// print("I'm not familiar with that weather."
// );
// }
// this code will work perfectly. 
*/

/*
//Enumerated types
// const weather = 'I like turtles.';
//print(weather);
// this code will work perfectly. 
//example
// Enum Weather { 
// sunny, 
// snowy,
// cloudy,
// rainy,
// }
//Switching on enums
// this code will work perfectly. 
// print(weatherToday);
// Weather.cloudy
// this code will work perfectly. 
// const weatherToday = Weather.cloudy;
// switch (weatherToday) {
// case Weather.sunny:
// print('Put on sunscreen.');
// break;
// case Weather.snowy:
// print('Get your skis.');
// break;
// case Weather.cloudy:
// case Weather.rainy:
// print('Bring an umbrella.');
// break;
// }
// final index = weatherToday.index;
// print(index); //2
// this code will work perfectly. 
//Avoiding the overuse of switch statements
*/

/*
//Mini-exercises
  // const audioState = AudioState.playing;
  // switch (audioState) {
  //   case AudioState.playing:
  //     print("video is playing");
  //     break;
  //   case AudioState.paused:
  //     print("video is paused");
  //     break;
  //   case AudioState.stopped:
  //     print("video is stopped");
  //     break;
  //   default:
  //     print("nothing is happening");
  // }
*/
}