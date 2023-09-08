import 'package:bloc_practice/second_practice/src/repository/movie_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc extends Bloc<SearchMovieEvent, List<String>> {
  final MovieRepository _movieRepository;
  MovieBloc(this._movieRepository) : super([]) {
    on<SearchMovieEvent>(
      (event, emit) async {
        final movies = await _movieRepository.search(event.key);
        emit(movies);
      },
      transformer: (events, mapper) => events
          .debounceTime(const Duration(milliseconds: 1000))
          .flatMap(mapper),
    );
  }

  @override
  void onTransition(Transition<SearchMovieEvent, List<String>> transition) {
    super.onTransition(transition);
    print(transition);
  }
}

class SearchMovieEvent extends Equatable {
  final String key;
  const SearchMovieEvent(this.key);
  @override
  List<Object?> get props => [key];
}
