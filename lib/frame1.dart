
import 'package:assignment/frame2.dart';
import 'package:assignment/frame3.dart';
import 'package:assignment/frame4.dart';
import 'package:assignment/frame5.dart';
import 'package:assignment/frame6.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';


class Frame1 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame1State();
  }
}



 class Frame1State extends State<Frame1> {

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        BackgroundImage(),

         Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
          
            child: Column(children: [



                


              Container(
                height: 70,
                child: Center(
                  child: Text(
                    "SELECT YOUR MOOD", style: TextStyle(fontSize: 25,
                   color: Colors.white,
                  fontWeight: FontWeight.bold),
                  ),
                ),
              ),
      
      


GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Frame2()),
    );
  },
  child: Container(
            height: 130,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/happy.jpg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                
                ),
                
                
                Expanded(
                  child: Text(
                    'Happy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

),

           SizedBox(
                height: 25,
              ),




GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Frame3()),
    );
  },
  child:  Container(
            height: 130,
            child: Row(
              children: [

                Expanded(
                  child: Text(
                    'Sad',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/sad.jfif'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
),


          SizedBox(
                height: 25,
              ),

GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Frame4()),
    );
  },
  child: Container(
            height: 130,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/excited.jfif'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Excited',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

),

             SizedBox(
                height: 25,
              ),




GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Frame5()),
    );
  },
  child:  Container(
            height: 130,
            child: Row(
              children: [

                Expanded(
                  child: Text(
                    'Stressed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/stressed.jfif'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),


),


 SizedBox(
                height: 57,
              ),



ElevatedButton(
                            
              
              onPressed: () {
             
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Frame6(),
                  ),
                );
              
            },
            child: Text("SKIP", style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),),
    
          ),
       
            
      ],
            )
          )
         )
      ],
      );

    



  }

 }