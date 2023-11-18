import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.teal,
      //   hintColor: Colors.amber,
      // ),
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 1, 1, 1),
            title: const Text('Test App')),
        body: Center(
          widthFactor: 3,
          heightFactor: 3,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 24, 23, 20),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 194, 184, 184),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: FlutterLogo(
              size: 124,
            ),
            padding: const EdgeInsets.all(20.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          hoverColor: Colors.amberAccent,
          onPressed: () {
            debugPrint('FAB clicked');
          },
          child: const Icon(
            Icons.add,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
