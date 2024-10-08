import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  Color box = Color.fromARGB(115, 72, 72, 72);
  int count = 0;

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          backgroundColor: bg,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Icon(Icons.brightness_low_outlined,
                color: ft,
                ),
                onTap: () => {
                  setState(() {
                    count += 1;
                    if (count % 2 == 0) {
                      bg = Colors.white;
                      ft = Colors.black;
                      box = Color.fromARGB(115, 204, 204, 204);
                    }else {
                      ft = Colors.white;
                      bg = Colors.black;
                      box = Color.fromARGB(115, 72, 72, 72);
                    }
                  })
                },
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                child: Text("J"),
                radius: 50,
                backgroundColor: Colors.orange,
              ),
              SizedBox(height: 20),
              Text("JOEL JACKSON", style: TextStyle(color: ft, fontSize: 25,fontWeight: FontWeight.w700),),
              SizedBox(height: 10,),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(115, 204, 204, 204),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: InkWell(
                  onTap: () => print("You clicked nigga"),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.privacy_tip, color: ft,),
                          SizedBox(width: 4,),
                          Text("Private Account", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}