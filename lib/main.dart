import 'package:flutter/material.dart';
import 'package:project/basic_button.dart';
import 'package:project/image_widget.dart';
import 'package:project/dropdownbutton.dart';
import 'package:project/popupButton.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "my Counter App",
        theme: ThemeData(
            primarySwatch: Colors.teal,
            textTheme: TextTheme(
              headline1: TextStyle(fontSize: 34, color: Colors.black),
            )),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Image Example"),
            ),
            body: PopupButtonExample()));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Counter App Bar",
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NewWidget(),
          Text(_count.toString(), style: Theme.of(context).textTheme.headline1),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          increment(),
          print("Button Clikcledni"),
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void increment() {
    setState(() {
      _count++;
    });
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Buttona basma sayi",
      style: TextStyle(fontSize: 24, color: Colors.blueAccent.shade100),
    );
  }
}
