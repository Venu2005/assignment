import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'description.dart';
import 'widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';






Future<List<Happy>> fetchHappy() async{
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/discover/movie?api_key=afb77186bdb64a2686f36445031cda63&with_genres=28  '));

   if (response.statusCode == 200) {

    final List<dynamic> happyJson = jsonDecode(response.body)['results'];
    return happyJson.map((json) => Happy.fromJson(json)).toList();
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //return Happy.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Happy {

  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final String releaseDate;



Happy ({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.releaseDate
  });

factory Happy.fromJson(Map<String, dynamic> json) {
    return Happy(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path'],
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'],
    );
  }
}

class Frame2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame2State();
  }
}

class Frame2State extends State<Frame2> {

 late Future<Happy> futureHappy;

  @override
  void initState(){
    super.initState();
    //futureHappy = fetchHappy();
  }

  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Happy'),
        backgroundColor: Colors.black,
      ),
      
       body: FutureBuilder<List<Happy>>(
        
        future: fetchHappy(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<Happy> movies = snapshot.data!;
            return ListView.separated(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return ListTile(
                  title: Text(movie.title),
                  //subtitle: Text(movie.overview),
                  leading: Image.network(
                    'https://image.tmdb.org/t/p/w92${movie.posterPath}',
                    fit: BoxFit.cover,
                  ),
                  onTap: () {

                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Description(name: movie.title,
                     description: movie.overview, 
                     banneurl: "https://image.tmdb.org/t/p/w500/" + movie.backdropPath, 
                     posterurl: "https://image.tmdb.org/t/p/w500/" + movie.posterPath ,
                      vote: movie.voteAverage.toString(), 
                      launch_on: movie.releaseDate),
                  ),
                );
                  },
                );
              }, separatorBuilder: (BuildContext context, int index) => const Divider(),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
                  


/*

class Frame2 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Frame2State();
  }
}

class Frame2State extends State<Frame2> {

  @override
  Widget build(BuildContext context)  {
    return Stack(
      children: [
        BackgroundImage(),
      ],
    );
  }
  
  
}
*/