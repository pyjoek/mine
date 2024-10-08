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
  Color bg = Color.fromARGB(255, 26, 26, 26);
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
              padding: const EdgeInsets.all(16.0),
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
                      bg = Color.fromARGB(255, 26, 26, 26);
                      box = Color.fromARGB(115, 216, 14, 14);
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
              SizedBox(height: 3),
              Text("JOEL JACKSON", style: TextStyle(color: ft, fontSize: 17,fontWeight: FontWeight.w700),),
              SizedBox(height: 3),
              Text("joelnrlson@gmail.com", style: TextStyle(color: ft, fontSize: 10),),        
              SizedBox(height: 15,),
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: InkWell(
                  onTap: () => print("You clicked nigga"),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Upgrade to PRO", style: TextStyle(fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
              ),
              SizedBox(height: 25,),
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
                          Icon(Icons.privacy_tip_outlined, color: ft,),
                          SizedBox(width: 4,),
                          Text("Private Account", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 15,),
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
                          Icon(Icons.history_rounded, color: ft,),
                          SizedBox(width: 4,),
                          Text("Purchase History", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 15,),
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
                          Icon(Icons.help_outline, color: ft,),
                          SizedBox(width: 4,),
                          Text("Help & Support", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 15,),
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
                          Icon(Icons.settings, color: ft,),
                          SizedBox(width: 4,),
                          Text("Settings", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 15,),
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
                          Icon(Icons.supervised_user_circle_outlined, color: ft,),
                          SizedBox(width: 4,),
                          Text("Invite a friend", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(height: 15,),
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
                          Icon(Icons.logout_rounded, color: ft,),
                          SizedBox(width: 4,),
                          Text("Logout", style: TextStyle(color: ft),),
                          Spacer(),
                          Icon(Icons.arrow_right_sharp, color: ft,)
                        ],
                      ),
                    ),
                  ),
                )
              ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}