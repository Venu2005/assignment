import 'package:flutter/material.dart';
import 'widgets.dart';


class Frame4 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame4State();
  }
}

class Frame4State extends State<Frame4> {

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        BackgroundImage(),
      ],
    );
  }
  
  
}