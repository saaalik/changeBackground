import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Background',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PasswordValidator(),
    );
  }
}

class PasswordValidator extends StatefulWidget {
  @override
  _PasswordValidatorState createState() => _PasswordValidatorState();
}

class _PasswordValidatorState extends State<PasswordValidator> {
  final controller = TextEditingController();
  Color color = Color(0xffffffff);
  String inputtext = "";

  void assign_color(colour) {
    setState(() {
      inputtext = controller.text;
    });
  }

  void changeBack() {
    setState(() {
      if (this.inputtext.toLowerCase() == "red") {
        color = Color(0xffE57373);
      } else if (this.inputtext.toLowerCase() == "green") {
        color = Color(0xff58D68D);
      } else if (this.inputtext.toLowerCase() == "blue") {
        color = Color(0xff5DADE2);
      } else if (this.inputtext.toLowerCase() == "yellow") {
        color = Color(0xffF4D03F);
      } else if (this.inputtext.toLowerCase() == "pink") {
        color = Color(0xffF06292);
      } else if (this.inputtext.toLowerCase() == "white") {
        color = Color(0xffffffff);
      } else if (this.inputtext.toLowerCase() == "orange") {
        color = Color(0xffFF8F00);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: this.color,
        appBar: AppBar(title: Center(child: Text("Change Background"))),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  controller: this.controller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.message),
                      labelText: "Enter Background colour",
                      suffixIcon: IconButton(
                          icon: Icon(Icons.send),
                          splashColor: Colors.black,
                          onPressed: changeBack)),
                  onChanged: (text) => assign_color(text)),
            ]));
  }
}
