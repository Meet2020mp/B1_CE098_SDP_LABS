import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main(List<String> arguments) {
  /*
//data types and oprators
//Data types in Dart
// int myInteger=10;
// double myDouble = 3.14;
//this code will work fine.
// const int myInteger = 10; 
// const double myDouble = 3.14;
//this code will work fine.
// final int myInteger = 10; 
// final double myDouble = 3.14;
//this code will work fine.
// const  myInteger = 10; 
// const  myDouble = 3.14;
//this code will work fine.
//checking the datatype at run time
// num myNumber=3.15;
// print(myNumber is double);
// print(myNumber is int);
//this code will work fine.
// print(myNumber.runtimeType);
//this code will work fine.
*/

/*
//type conversion
// var integer=100;
// var decimal = 12.5; 
// integer = decimal;
//Error: A value of type 'double' can't be assigned to a variable of type 'int'.
// integer = decimal.toInt();
// integer=5;
// print(integer);
//this code will work fine.
// const hourlyrate=19.5;
// const hoursWorked=10;
// const totalcost=hoursWorked+hourlyrate;
// print(totalcost);//dart will convert it into double
// const totalcost=(hourlyrate*hoursWorked).toInt();
// print(totalcost);//this code will not work because const can not be assigned at run time
// const hourlyrate=19.5;
// const hoursWorked=10;
// final totalcost=(hourlyrate*hoursWorked).toInt();
// print(totalcost);
//this code will work fine.
//Ensuring a certain type
// const wantADouble = 3;
// print(wantADouble);
// final actuallyDouble = 3.toDouble();
// print(actuallyDouble);
//this code will work fine.
// const double actuallyDouble = 3;
// print(actuallyDouble);
// const wantADouble = 3.0;
// print(wantADouble);
//this code will work fine.
//Casting down
// num someNumber = 3;
// print(someNumber.isEven);
//Error: The getter 'isEven' isn't defined for the class 'num'.
//Try correcting the name to the name of an existing getter, or defining a getter or field named 'isEven'.
// num someNumber = 3;
// final someInt = someNumber as int;
// print(someInt.isEven);
//this code will work fine.
// num someNumber = 3;
// final someDouble = someNumber as double;
// print(someDouble);
//this code will crase with the message :Unhandled exception:
// type 'int' is not a subtype of type 'double' in type cast
// num someNumber = 3;
// final someDouble = someNumber.toDouble();
// print(someDouble);
//this code will work fine.
*/

/* 
//challange section
//challange : 1
// const age1=42;//type int
// const age2=21;//type int
// print(age1);
// print(age2);
//this code will work perfectly.
//challange : 2
// const age1=42;
// const age2=21;
// const averageAge=(age1+age2)/2;//type : double
//reason :
*/
/*
//strings
// print('Hello, Dart!');
//this code will work perfectly.
// var greeting = 'Hello, Dart!';
// print(greeting);
//this code will work perfectly.
// var greeting = 'Hello, Dart!';
// greeting = 'Hello, Flutter!';
//this code will work perfectly.
// const letter = 'a';
// print(letter);//type == string
//this code will work perfectly.
//var s1='I like cats';
// var s2="I like cats";  
// print(s1);
// print(s2);
//this code will work perfectly.
// var s="my cat's food";
// print(s);
//this code will work perfectly.
// var s2='my cat\'s food';
// print(s2);
//this code will work perfectly.
*/

/*
// Concatenation
// var message = 'Hello' + ' my name is '; 
// const name = 'Ray';
// message += name;
// print(message);
//this code will work perfectly.
//useing string buffer
// final message = StringBuffer();
// message.write('Hello'); 
// message.write(' my name is '); 
// message.write('Ray');
// message.toString();
// print(message);
// "Hello my name is Ray"
//this code will work perfectly.
*/

/*
//Interpolation
const name = 'Ray';
const introduction = 'Hello my name is $name';
print(introduction);
//this code will work perfectly.
// const oneThird = 1 / 3;
// const sentence = 'One third is $oneThird.';
// print(sentence);
// this code will work perfectly.
// const oneThird = 1 / 3;
// final sentence = 'One third is ${oneThird.toStringAsFixed(3)}.';
// print(sentence); //One third is 0.333.
// this code will work perfectly.
*/

/*
//Multi-line strings
// const bigString = ''' 
// You can have a string
// that contains multiple
// lines
// by
// doing this.''';
// print(bigString);
// this code will work perfectly.
// const oneLine = 'This is only ' 
// 'a single '
// 'line '
// 'at runtime.';
// print(oneLine);//This is only a single line at runtime.
// this code will work perfectly.
// const twoLines = 'This is\ntwo lines.';//This is
// print(twoLines);                       //two lines.
// this code will work perfectly.
// const rawString = r'My name \n is $name.';
// print(rawString); //My name \n is $name.
// this code will work perfectly. 
*/

/*
//Mini-exercises
// const firstname='DAKSHAY';
// const lastname='SOLANKI';
// const fullname='${firstname}  ${lastname}';
// print(fullname);
// const myDeatials='Hello, my name is ${firstname} ${lastname}';
// print(myDeatials);
// this code will work perfectly. 
*/

/*
//Object and dynamic types
// var myVariable=42;
// myVariable = "hello";
//Error: A value of type 'String' can't be assigned to a variable of type 'int'.
// var myVariable=42;
// myVariable = "hello";
// var answer = myVariable * 3;
// print(answer);//run time error
// dynamic myVariable = 42
// myVariable = 'hello'; // OK
//print(myVariable);
// this code will work perfectly. 
// var myVariable; // defaults to dynamic
// myVariable = 42; // OK
// print(myVariable);
// myVariable = 'hello'; // OK
// print(myVariable);
// this code will work perfectly. 
// Object? myVariable = 42;
// myVariable = 'hello'; // OK
// print(myVariable);
// this code will work perfectly. 
/**when you explicitly declare a variable as Object?,
you’re telling everyone that you generalized your variable on 
purpose, and that they’ll need to check its type at runtime if 
they want to do anything specific with it. Using dynamic, on 
the other hand, is more like saying you don’t know what the 
type is; you’re telling people they can do what they like with 
this variable, but it’s completely on them if their code 
crashes. */
*/
/*
//challenges
//challenge : 1
// var att=90*(0.2);
// var hw=80*0.3;
// var exam=94*0.5;
// int grade=(att+hw+exam).toInt();
// print(grade);
//challenge : 2
// const name="ray";
// name += ' Wenderlich';
//const can not be reasigned
//challenge : 3
const value = 10 / 2;//type is double
//challenge : 6
// const number=10;
// const multiplier = 5;
// final summary = '$number* $multiplier = ${number*multiplier}';
// print(summary);//the value will be 50
*/
/**
 * //Key points
 * Type conversion allows you to convert values of one 
type into another.
When doing operations with basic arithmetic operators 
(+, -, *, /) and mixed types, the result will be a double.
Type inference allows you to omit the type when Dart 
can figure it out.
Unicode is the standard representation for mapping 
characters to numbers.
Dart uses UTF-16 values known as code units to encode 
Unicode strings.
A single mapping in Unicode is called a code point, 
which is known as a rune in Dart.
const value = 10 / 2;
const number = 10; 
const multiplier = 5;
final summary = '$number* $multiplier = ${n umber
* multiplier}';
User-perceived characters may be composed of one or 
more code points and are called grapheme characters.
You can combine strings by using the addition
operator.
You can make multi-line strings using three singlequotes or double quotes.
You can use string interpolation to build a string inplace.
Dart is an optionally-typed language. While it’s 
preferable to choose statically-typed variables, you
may write Dart code in a dynamically-typed way by 
explicitly adding the dynamic type annotation in front 
of variables
 */
}