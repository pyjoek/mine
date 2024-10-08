import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override 
  Widget build(BuildContext context){
    return MyHome();
  }

}

class MyHome extends StatefulWidget {
  @override 
  Myhome createState() => Myhome();
}

class Myhome extends State<MyHome> {
  Color bg = Colors.black;
  Color ft = Colors.white;

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          backgroundColor: bg,
          actions: [
            InkWell(
              child: Icon(Icons.home,
              color: ft,
              ),
              onTap: () => {
                setState(() {
                  bg = Colors.white;
                  ft = Colors.black;
                })
              },
            )
          ],
        ),
      ),
    );
  }
}