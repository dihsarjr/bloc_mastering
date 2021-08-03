import 'package:bloc_master/counter_bloc_app/cubit/counter_cubit.dart';
import 'package:bloc_master/counter_bloc_app/view/counter_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Home(),
        "counterApp": (context) => BlocProvider(
              create: (_) => CounterCubit(),
              child: CounterApp(),
            )
      },
    );
  }
}
