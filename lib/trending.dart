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
        style: TextStyle(fontSize: 25,color: Colors.blue,
                  fontWeight: FontWeight.bold),
      ),
    




        Container(
              height: 270,
              child: ListView.builder(itemCount:trending.length ,
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
                              
                              "https://image.tmdb.org/t/p/w500/"+ trending[index]["poster_path"]
                              ))),
                          ),

                          Container(child: Text(trending[index]["title"]!= null?
                          trending[index]["title"] : "loading") ,)


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