import 'package:flutter/material.dart';

import 'description.dart';


class UpcomingMovies extends StatelessWidget {
  final List upcoming;

  const UpcomingMovies({super.key, required this.upcoming});


  



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [

           
      Text(
        'UPCOMING',
        style: TextStyle(fontSize: 20,color: Colors.blue,
                  fontWeight: FontWeight.bold),
      ),
    




        Container(
              height: 210,
              child: ListView.builder(itemCount:upcoming.length ,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){

                    return InkWell(
                      onTap: () {
                         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Description(name: upcoming[index]["title"],
                     description: upcoming[index]["overview"], 
                     banneurl: "https://image.tmdb.org/t/p/w500/" + upcoming[index]["backdrop_path"], 
                     posterurl: "https://image.tmdb.org/t/p/w500/" +upcoming[index]["poster_path"] ,
                      vote: upcoming[index]["vote_average"].toString(), 
                      launch_on: upcoming[index]["release_date"]),
                  ),
                );
                      },

                      child: Container(
                        width: 140,
                        child: Column(children: [
                         Container(
                          height: 200,
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
                              
                              "https://image.tmdb.org/t/p/w500/"+ upcoming[index]["poster_path"]
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