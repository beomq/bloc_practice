import 'package:bloc_practice/second_practice/src/repository/movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieCubit extends Cubit<List<String>> {
  MovieRepository _movieRepository;
  MovieCubit(this._movieRepository) : super([]);

  void searchMovies(String query) async {
    final movies = await _movieRepository.search(query);
    emit(movies);
  }
}
