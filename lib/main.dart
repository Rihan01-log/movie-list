import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieListScreen(),
    );
  }
}

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  // Sample list of movies
  final List<String> movies = [
    'The Shawshank Redemption',
    'The Godfather',
    'The Dark Knight',
    'Pulp Fiction',
    'The Lord of the Rings: The Return of the King',
    'Forrest Gump',
    'Inception',
    'Fight Club',
    'The Matrix',
    'Goodfellas',
    'Avatar',
    'Avengers: Endgame',
    'Avatar: The Way of Water',
    'Titanic',
    'Star Wars: Episode VII - The Force Awakens',
    'Avengers: Infinity War',
    "The Avengers",
    'The Lion King',
    'Jurassic World',
    'Spider-Man: No Way Home',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text('Movie List'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.movie),
            title: Text(movies[index]),
          );
        },
      ),
    );
  }
}
