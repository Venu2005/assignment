
import 'package:flutter/material.dart';

class Frame1 extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: ElevatedButton(child: Text("back"),
      onPressed: ()=>{
        Navigator.pop(context)
      },));

    



  }


}