class MovieModel {
  String? movieKey;
  String? movieRating;
  String? year;
  final List<String>? cast;
  final List<Map<String, String>>? comments;

  MovieModel({
    this.movieKey,
    this.movieRating,
    this.year,
    this.cast,
    this.comments,
  });
}

final allMovies = {
  MovieModel(
    movieKey: 'mission_impossible',
    movieRating: '9.3',
    year: '2023',
    cast: [
      'Tom Cruise',
      'Hayley Atwell',
    ],
    comments: [
      {'Ryan': 'Really fantastic!'},
      {'Alex': 'So fun!'},
      {'Spencer': 'Gorgeous!'},
    ],
  ),
  MovieModel(
    movieKey: 'elemental',
    movieRating: '9.4',
    year: '2023',
    cast: [
      'Tom Cruise',
      'Hayley Atwell',
    ],
    comments: [
      {'Ryan': 'Really fantastic!'},
      {'Alex': 'So fun!'},
      {'Spencer': 'Gorgeous!'},
    ],
  ),
  MovieModel(
    movieKey: 'elemental',
    movieRating: '9.4',
    year: '2023',
    cast: [
      'Tom Cruise',
      'Hayley Atwell',
    ],
    comments: [
      {'Ryan': 'Really fantastic!'},
      {'Alex': 'So fun!'},
      {'Spencer': 'Gorgeous!'},
    ],
  ),
};

String getMovieImagePath(MovieModel m) => 'images/movies/elemental.jpg';
