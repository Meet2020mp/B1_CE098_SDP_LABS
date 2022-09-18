//Code for row and colmn
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          /* Text('HELLO ROW'),
        FlatButton(
        onPressed: () {},
        color: Colors.purple,
        child: Text('press me'),
        ),
        */
          Row(),
          Container(
            color: Colors.orange[800],
            padding: EdgeInsets.all(30.0),
            child: Text('inside container 1'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.green[800],
                padding: EdgeInsets.all(70.0),
                child: Text('inside container 3'),
              ),
          ),
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(50.0),
            child: Text('inside container 2'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Colors.cyanAccent[600],
      ),
    );
  }
}


//Code 6:
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: FinalTest1(),
));
class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber[800],
              padding: EdgeInsets.all(30),
              child: Text('1'),
            ),
          ),
          Container(
            color: Colors.indigo[900],
            padding: EdgeInsets.all(30),
            child: Text('2'),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(30),
            child: Text('3'),
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, // must required property...
// making change at here to test hot reloading..click --> clic me---> Click and ctrl + s
      child: Text('Click'),
      backgroundColor: Colors.cyanAccent[600],
    ),
    );
  }
}
