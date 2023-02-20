import 'package:flutter/material.dart';
import 'widgets.dart';


class Frame5 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame5State();
  }
}

class Frame5State extends State<Frame5> {

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        BackgroundImage(),
      ],
    );
  }
  
  
}