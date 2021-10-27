import 'package:flutter/material.dart';

import 'dropdown.dart';
// import './dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pravin Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Welcome Message'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        centerTitle: true,
        title: Text("Welcome Message"),
      ),
      body: Center(
        
        child: Column(
          
          children: <Widget>[
            Image.network('https://png.pngitem.com/pimgs/s/361-3618777_add-account-icon-add-account-icon-png-transparent.png',height: 120,),
            TextField(
               decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'NAME',
        ),
            
      ),
            SizedBox(height :18 ),
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'EMAIL',
        ),
      ),
            SizedBox(height :18 ),
            TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'PASSWORD',
        ),
      ),
      Container(
        child: DropDownDemo(),
      ),
            
            
          ],
        ),
      ),
    );
  }
}
