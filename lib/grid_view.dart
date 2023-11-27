import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GridView Example",
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        primary: true,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.black,
            child: const Center(
              child: Text(
                "Hello Code",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Hello ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Hello Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(
              child: Text(
                "Hello World and Hello Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.purple,
            child: const Center(
              child: Text(
                "Hello World",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Center(
                  child: Text("Hello World",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
