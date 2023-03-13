import 'package:flutter/material.dart';


class TopRatedMovies extends StatelessWidget {
  final List topRated;

  const TopRatedMovies({super.key, required this.topRated});




  



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [

           
      Text(
        'TOP RATED',
        style: TextStyle(fontSize: 20,color: Colors.blue,
                  fontWeight: FontWeight.bold),
      ),
    




        Container(
              height: 210,
              child: ListView.builder(itemCount:topRated.length ,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){

                    return InkWell(
                      onTap: () {
                        
                      },

                      child: Container(
                        width: 140,
                        child: Column(children: [
                         Container(
                          height: 200,
                            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
                              
                              "https://image.tmdb.org/t/p/w500/"+ topRated[index]["poster_path"]
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