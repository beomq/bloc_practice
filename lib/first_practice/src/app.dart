import 'package:bloc_practice/first_practice/src/bloc/bloc_home.dart';
import 'package:bloc_practice/first_practice/src/bloc/count_bloc.dart';
import 'package:bloc_practice/first_practice/src/cubit/count_cubit.dart';
import 'package:bloc_practice/first_practice/src/cubit/cubit_home.dart';
import 'package:bloc_practice/first_practice/src/getx/count_get_x_controller.dart';
import 'package:bloc_practice/first_practice/src/getx/getx_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('카운터 예제'))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const GetXHome(), binding: BindingsBuilder(() {
                    Get.put(
                      CountGetXController(),
                    );
                  }), duration: Duration.zero);
                },
                child: const Text('GetX')),
            ElevatedButton(
                onPressed: () {
                  Get.to(
                      BlocProvider(
                        create: (context) => CountCubit(),
                        child: const CubitHome(),
                      ),
                      duration: Duration.zero);
                },
                child: const Text('Cubit')),
            ElevatedButton(
                onPressed: () {
                  Get.to(
                      BlocProvider(
                        create: (context) => CountBloc(),
                        child: const BlocHome(),
                      ),
                      duration: Duration.zero);
                },
                child: const Text('Bloc')),
          ],
        ));
  }
}
