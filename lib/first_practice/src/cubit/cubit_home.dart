import 'package:bloc_practice/first_practice/src/cubit/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHome extends StatelessWidget {
  const CubitHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cubit'),
      ),
      body: Center(
        child: BlocBuilder<CountCubit, int>(builder: (context, state) {
          return Text(state.toString());
        }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: context.read<CountCubit>().increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: context.read<CountCubit>().decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
