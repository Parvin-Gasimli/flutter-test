import 'package:flutter/material.dart';
import 'package:project/main.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPage();
}

class _MyCounterPage extends State<MyCounterPage> {
  @override
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
