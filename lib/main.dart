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
            backgroundColor: Colors.amber,
            title: const Text('Flutter Demo Home Page')),
        body: Container(
          alignment: Alignment.center,
          // margin: const EdgeInsets.all(20),
          color: const Color.fromARGB(255, 39, 119, 176),
          child: Text("salam"),
          constraints: const BoxConstraints(
            maxHeight: 200,
            maxWidth: 200,
            minHeight: 100,
            minWidth: 100,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
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
