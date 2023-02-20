import 'package:flutter/material.dart';
import 'widgets.dart';


class Frame3 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame3State();
  }
}

class Frame3State extends State<Frame3> {

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        BackgroundImage(),
      ],
    );
  }
  
  
}