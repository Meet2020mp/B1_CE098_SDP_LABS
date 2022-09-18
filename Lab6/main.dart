import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: Center(
        child : Text("Hello DDU",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            color: Colors.grey[600],
            fontFamily: 'yankclipper',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ },
        child: Text("click"),
        backgroundColor: Colors.red[600],

      ),
    );
  }
}
