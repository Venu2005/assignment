


import 'package:flutter/material.dart';
import 'widgets.dart';
import 'package:assignment/frame1.dart';

class LoginPage extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}
 
 class LoginPageState extends State<LoginPage> {
 final usernameController = TextEditingController();
  final passwordController = TextEditingController();

 
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
          
            child: Column(children: [

              Container(
                height: 150,
                child: Center(
                  child: Text(
                    "WELCOME!", style: TextStyle(fontSize: 30,
                   color: Colors.red,
                  fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                width:400 ,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(image :AssetImage("assets/images/logo.PNG"),
                fit: BoxFit.cover,)
                ),
                 
                 ),
              
              Container(
                width:50 ,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image :AssetImage("assets/images/netflix.png"),
                fit: BoxFit.cover,)
                ),
                 
              ),

              SizedBox(
                height: 50,
              ),

              Container(
                  child :Text(
                    "Username", style: TextStyle(fontSize: 30,
                   color: Colors.white,
                  fontWeight: FontWeight.bold),
                  ),

              ),


               SizedBox(
                height: 15,
              ),


              Container(
                width: 200,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white, ),
                      
                      child: TextField(
                        controller: usernameController,
                              
                           
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ]
                ),
              ),
                
                   SizedBox(
                height: 35,
                   ),


                  Container(
                  child :Text(
                    "Password", style: TextStyle(fontSize: 30,
                   color: Colors.white,
                  fontWeight: FontWeight.bold),
                  ),

              ),

              SizedBox(
                height: 15,
              ),


               Container(
                width: 200,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white, ),
                      
                      child: TextField(
                        controller: passwordController,
                        
                        

                      ),
                    ),
                  ]
                ),
              ),


              SizedBox(
                height: 20,
              ),


             
             ElevatedButton(
                            
              
              onPressed: () {
              if (usernameController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Frame1(),
                  ),
                );
              }
            },
            child: Text("Sign up", style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),),
    
          ),
              
              
              
            

                 
          
            ],
            ),
            
          )
          
        ),
        
      ],
    );


  }
}

