
import 'package:firebase_auth/firebase_auth.dart' 
    hide EmailAuthProvider, PhoneAuthProvider;    
import 'package:flutter/material.dart';           
import 'package:provider/provider.dart';          

import 'app_state.dart';                          
import 'authentication.dart';             
import 'widgets.dart';
import 'widgets2.dart';
import 'package:assignment/frame1.dart';

class LoginPage extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}
 
 class LoginPageState extends State<LoginPage> {
 //final usernameController = TextEditingController();
  //final passwordController = TextEditingController();

 
  

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

   

              SizedBox(
                height: 20,
              ),

                Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
                loggedIn: appState.loggedIn,
                signOut: () {
                  FirebaseAuth.instance.signOut();
                }),
          ),


             
            
              
              
            

                 
          
            ],
            ),
            
          )
          
        ),
        
      ],
    );


  }
}

