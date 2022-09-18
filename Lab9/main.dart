//Quote.dart
class Quote{
  String text;
  String author;

  Quote({this.text=' ',this.author=' '});
}

//quote_card.dart
import 'package:flutter/material.dart';
import 'package:lab7/Quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(

                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//main.dart
import 'package:flutter/material.dart';
import 'package:lab7/Quote.dart';
import 'quote_card.dart';
//import 'package:lab8_2/quote.dart';
void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [

    Quote(text: 'The truth is realy pure and never simple',author:
    'Meet'),
    Quote(author: 'Jay', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'TK'),
  ];
  Widget quoteTemplate(quote){
    return QuoteCard(quote: quote,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
//children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

//Code Test2:
//main.dart 
import 'package:flutter/material.dart';
import 'package:lab7/Quote.dart';
import 'quote_card.dart'; // Absolute path
//import 'quote_card.dart'; // Relative path
void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'Meet'),
    Quote(author: 'Jay', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:

    'TK'),
  ];
/*
Widget quoteTemplate(quote){
return QuoteCard(quote: quote,);
}
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}

//quote_card.dart
import 'package:flutter/material.dart';
import 'package:lab7/Quote.dart';
class QuoteCard extends StatelessWidget {
// Quote quote; // in StatelessWidget can't allowed variable ..
  final Quote quote;
// final void Function() delete; // or you can use following code also
  final VoidCallback delete;
  QuoteCard({required this.quote,required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),

            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(

                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 8.0,),
            TextButton.icon(
/*
our data doesn't exist inside this stateless widget class..
data are in 'main.dart' file. ..
*/
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete Quote'),
            ),
          ],
        ),
      ),
    );
  }
}