import 'package:flutter/material.dart';

void main() {
  runApp(Moviedom());
}

class Moviedom extends StatelessWidget{
@override
Widget build(BuildContext context){
return MaterialApp(
  title: "Moviedom",
  theme: ThemeData(primarySwatch:Colors.yellow ),
  home: LoginPage()
    );

}
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    drawer: Drawer(),
    floatingActionButton: FloatingActionButton(onPressed: () {print("clicked");
     }),
    body: Text("hello"),
    );
  }
}