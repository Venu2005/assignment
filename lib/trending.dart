import 'package:assignment/description.dart';
import 'package:flutter/material.dart';



class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({super.key, required this.trending});


  



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [

           
      Text(
        'TRENDING',
        style: TextStyle(fontSize: 20,color: Colors.blue,
                  fontWeight: FontWeight.bold),
      ),
    




        Container(
              height: 210,
              child: ListView.builder(itemCount:trending.length ,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){

                    return InkWell(
                      onTap: () {
                        
                        Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Description(name: trending[index]["title"],
                     description: trending[index]["overview"], 
                     banneurl: "https://image.tmdb.org/t/p/w500/" + trending[index]["backdrop_path"], 
                     posterurl: "https://image.tmdb.org/t/p/w500/" +trending[index]["poster_path"] ,
                      vote: trending[index]["vote_average"].toString(), 
                      launch_on: trending[index]["release_date"]),
                  ),
                );

                      },

                      child: Container(
                        width: 140,
                        child: Column(children: [
                         Container(
                          height: 200,
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
                              
                              "https://image.tmdb.org/t/p/w500/"+ trending[index]["poster_path"]
                              ))),
                          ),

                          

                        ]),
                      ),

                    );

                },

              )

            )



      ]),

    );
  }
}