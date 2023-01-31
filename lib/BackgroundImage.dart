import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image : NetworkImage("https://wallpapercave.com/wp/wp7638806.jpg"),
      fit: BoxFit.cover, 
      ),
      ) ,
    );
  }
}