import 'package:bloc_practice/src/bloc/count_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bloc'),
      ),
      body: Center(
        child: BlocBuilder<CountBloc, int>(builder: (context, state) {
          return Text(state.toString());
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CountBloc>().add(IncrementEvent());
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CountBloc>().add(DecrementEvent());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
