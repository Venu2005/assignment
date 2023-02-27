import 'package:flutter/material.dart';
import 'widgets.dart';


class Frame2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame2State();
  }
}

class Frame2State extends State<Frame2> {

  


  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        BackgroundImage(),

        Scaffold(
          
        ),
      ]
    );
  }
  
  
}