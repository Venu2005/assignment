import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'description.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
final TextEditingController _searchController = TextEditingController();

Future<List<dynamic>> _searchMovies(String query) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/search/movie?api_key=afb77186bdb64a2686f36445031cda63&query=$query'));
  if (response.statusCode == 200) {
    final results = json.decode(response.body)['results'];
    return results;
  } else {
    throw Exception('Failed to search movies');
  }
}


List<dynamic> _searchResults = [];

void _onSearchButtonPressed() async {
  final query = _searchController.text;
  final results = await _searchMovies(query);
  setState(() {
    _searchResults = results;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search for movies',
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: _onSearchButtonPressed,
          ),
        ),
      ),
    ),

    body: ListView.builder(
      itemCount: _searchResults.length,
      itemBuilder: (BuildContext context, int index) {
        final result = _searchResults[index];
        return ListTile(
          leading: Image.network(
              'https://image.tmdb.org/t/p/w92${result['poster_path']}'),
          title: Text(result['title']),
          subtitle: Text(result['overview']),

      
        );
      },
    ),
  );
}


}