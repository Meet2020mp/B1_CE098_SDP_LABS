//Code for insert image
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FinalTest1(),
    ));

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
          child: Image(
        image: AssetImage('assets/images/baps.jpg'),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.cyanAccent[600],
      ),
    );
  }
}


//Code for flatButton
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  void btnPressed(){
    print("Button pressed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body:Center(
          child: FlatButton(
            onPressed:btnPressed,
            //textScaleFactor is the number of font pixels for each logical pixel, For example, if the text scale factor is 1.5, text will be 50% larger than the specified font size
            child: Text('Click Me',textScaleFactor: 1.5),
            color: Colors.deepOrangeAccent,
            //sets height of button
            height: 60,
            minWidth: 150,
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Colors.cyan[600],
      ),
    );
  }
}

//Code for textButton
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  void btnPressed() {
    print("Gallery opened");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            icon: Icon(
              Icons.photo_camera,
              color: Colors.indigo,
              size: 50.0,
            ),
            label: Text(
              "Gallery",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                letterSpacing: 2.0,
                backgroundColor: Colors.indigoAccent,
              ),
              textAlign: TextAlign.start,
            ),
            onPressed: btnPressed,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Colors.cyan[600],
      ),
    );
  }
}
