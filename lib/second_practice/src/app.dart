import 'package:bloc_practice/second_practice/src/bloc/movie_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('영화 검색'),
        ),
        body: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '검색어를 입력하세요',
              ),
              onChanged: (value) {
                context.read<MovieBloc>().add(SearchMovieEvent(value));
              },
            ),
            Expanded(
              child: BlocBuilder<MovieBloc, List<String>>(
                  builder: (context, state) {
                return ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(state[index]),
                        ),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: state.length);
              }),
            )
          ],
        ));
  }
}
