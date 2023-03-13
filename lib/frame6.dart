
import 'package:assignment/frame1.dart';
import 'package:assignment/toprated.dart';
import 'package:assignment/trending.dart';
import 'package:assignment/upcoming.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'widgets.dart';


class Frame6 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame6State();
  }
}

class Frame6State extends State<Frame6> {

  List trendingmovies = [];
  List topRatedmovies = [];
  List upcomingmovies = [];

  final String apikey = "afb77186bdb64a2686f36445031cda63";
  final String readaccesstoken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhZmI3NzE4NmJkYjY0YTI2ODZmMzY0NDUwMzFjZGE2MyIsInN1YiI6IjYzYzY3MmY3NjBiNThkMDBjNmRiNDI1OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.UUEdAxM2kyX22sHS7uAFj2ZEc1taNn8EL_4EoGt2Bho";
  
  @override
  void initState(){

    loadmovies();
    super.initState();

  }

  loadmovies()async{

    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(apikey, readaccesstoken),
    logConfig: ConfigLogger(
      showLogs: true,
      showErrorLogs: true

    ) 
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topRatedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map upcomingresult = await tmdbWithCustomLogs.v3.movies.getUpcoming();


    setState(() {
        
              

                 


      trendingmovies = trendingresult["results"];
        

      topRatedmovies = topRatedresult["results"]; 

      upcomingmovies = upcomingresult["results"];
          

    });

        
     
  }



  @override
  Widget build(BuildContext context)  {
     return Scaffold(

      body : Container(
    
            decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://wallpapercave.com/wp/wp7638806.jpg"),
            fit: BoxFit.cover,
          ),
        ),


            child: Column(children: [

                 SizedBox(
                height: 25,
              ),

    TrendingMovies(trending: trendingmovies,),
    TopRatedMovies(topRated: topRatedmovies,),
    UpcomingMovies(upcoming: upcomingmovies,),

ElevatedButton(
                            
              
              onPressed: () {
             
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Frame1(),
                  ),
                );
              
            },
            child: Text("BACK", style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),),
    
          ),

    ]
    
           
    

  )
      )

     );
        
       

       

         

            


         

       
 


      
     
    

            

        

   
  }
  
  
}