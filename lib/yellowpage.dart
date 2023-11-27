import 'package:flutter/material.dart';

class YellowPageExample extends StatelessWidget {
  const YellowPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Red Page",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.yellow],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 72, 69, 69),
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            "Red Code",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
