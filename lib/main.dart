import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white60,
        child:Image.network('https://media.istockphoto.com/id/1352107081/photo/world-blood-donor-day-blood-donation-blood-donor-with-bandage-after-giving-blood'
            '.jpg?s=1024x1024&w=is&k=20&c=o6R4s-Or_wcsk32GMtnrpVjp-aYt09D1C4WmfcjG6fk='),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Donners")),
      body: Center(
          child:Text("Donate Blood Save Lives",textScaleFactor: 2,)
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        tooltip: 'Increment',
        onPressed: (){},
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
