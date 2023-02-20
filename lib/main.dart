import 'package:flutter/material.dart';
import 'login_page.dart';


void main() {
  runApp(Moviedom());
}

class Moviedom extends StatelessWidget{
@override

Widget build(BuildContext context){
  
return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Moviedom",
  theme: ThemeData(primarySwatch:Colors.red ),
  home: LoginPage()
    );

}
}


