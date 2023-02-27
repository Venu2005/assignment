
import 'package:assignment/trending.dart';
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

    setState(() {
        
              

                 


      trendingmovies = trendingresult["results"];
        

      topRatedmovies = topRatedresult["results"]; 
          

    });

     
  }



  @override
  Widget build(BuildContext context)  {
     return Scaffold(
       
      body : ListView(
    
    children:[

       

    TrendingMovies(trending: trendingmovies,)
    ]
    
           
    

  )
      
     );
        
       

       

         

            


         

       
 


      
     
    

            

        

   
  }
  
  
}