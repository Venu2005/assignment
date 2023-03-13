import 'package:flutter/material.dart';
import 'widgets.dart';

class Description extends StatelessWidget {
  
  final String name, description, banneurl,posterurl, vote, launch_on;

  const Description({super.key, required this.name, required this.description, required this.banneurl, required this.posterurl, required this.vote, required this.launch_on});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Container(
      
        child: ListView(
            children: [
              Container(
                height: 250,
                child:Stack(
                  children: [
                    Positioned(child: Container(

                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(banneurl, fit:BoxFit.cover),
                    )),

                    Positioned(bottom: 10,
                      child: Text( "⭐ Average rating : " + vote , style: TextStyle(color: Colors.white,)))

                  ],

                ),
              ),

               SizedBox(
                height: 15,
              ),

              Container(padding: EdgeInsets.all(10),
              child: Text(name!= null?name:"Not loaded",style: TextStyle(color: Colors.white,fontSize: 20.0)),),

           Container(

                padding: EdgeInsets.only(left : 10),
                child: Text("Releasing on " + launch_on, style: TextStyle(color: Colors.white,)),



           ) ,
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),

              Flexible(
                child: Text( description,style: TextStyle(color: Colors.white,fontSize: 17.0)),
              )

            ],
          ),
           
           ],
        ),
      
      
      ),
    );
  }
}