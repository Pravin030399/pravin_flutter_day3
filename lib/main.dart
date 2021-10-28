import 'package:flutter/material.dart';
import 'dropdown.dart';
// import './dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.`
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
    bool isButtonActive = false;
    late TextEditingController controller = TextEditingController();
    late TextEditingController controlleremail = TextEditingController();
    late TextEditingController controllerPassword = TextEditingController();

@override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controlleremail = TextEditingController();

    controller.addListener(login);
    controlleremail.addListener(login);
    controllerPassword.addListener(login);

    
  }
  void login() {
      setState(() {
        if (controller.text.isNotEmpty &&
            controlleremail.text.isNotEmpty &&
            controllerPassword.text.isNotEmpty) {
          isButtonActive = true;
        } else {
          isButtonActive = false;
        }
      });
    }
    @override
    void dispose() {
      controller.dispose();
      controlleremail.dispose();
      super.dispose();
  }
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
        ),controller : controller,
            
      ),
            SizedBox(height :18 ),
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'EMAIL',
        ), controller: controlleremail,
      ),
            SizedBox(height :18 ),
            TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'PASSWORD',
        ), controller: controllerPassword,
      ),
      Container(
        child: DropDownDemo(),
      ),
      ElevatedButton(
                    child: Text('LOGIN',),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 92, vertical: 10),
                        primary: Colors.green,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: !isButtonActive
                        ? null:() {
                          
                         
                            controller.clear();
                            controlleremail.clear();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("SUCCESFULLY SIGN IN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20)),
                              // duration: const Duration(seconds: 2),
                            ));
                            // validation purpose
                          }
                       
                  )
            
          ],
        ),
      ),
    );
  }
}
