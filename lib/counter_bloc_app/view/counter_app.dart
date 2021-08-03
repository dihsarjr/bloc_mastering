import 'package:bloc_master/counter_bloc_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: BlocConsumer<CounterCubit, int>(listener: (context, state) {
        if (state.isOdd) {
          print("this is odd number $state");
        } else {
          print("this is even number $state");
        }
      }, builder: (
        context,
        sate,
      ) {
        return Container(
          color: sate.isOdd ? Colors.lightGreen : Colors.purpleAccent,
          child: Center(
            child: Text(sate.toString()),
          ),
        );
      }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: "new",
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: Icon(Icons.add),
            ),
            const SizedBox(
              width: 25,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
