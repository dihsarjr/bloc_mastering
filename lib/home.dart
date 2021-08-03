import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "counterApp");
              },
              child: Text("Counter App"),
            ),
          ),
        ],
      ),
    );
  }
}
