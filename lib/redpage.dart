import 'package:flutter/material.dart';
import 'package:project/greenpage.dart';
import 'package:project/yellowpage.dart';

class RedPageExample extends StatelessWidget {
  const RedPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Red Page",
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GreenPageExample()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                child: Text("Go to Green Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => YellowPageExample()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                child: Text("Go to Yellow Page"))
          ],
        ));
  }
}
