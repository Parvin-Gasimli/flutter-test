import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            style: TextButton.styleFrom(
                primary: const Color.fromARGB(255, 54, 244, 225),
                onSurface: const Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              print("Text Button Clicked");
            },
            child: Text("Text Button")),
        TextButton.icon(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                iconColor: MaterialStateProperty.all(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 20, 2, 1)),
                overlayColor: MaterialStateColor.resolveWith((states) =>
                    const Color.fromARGB(255, 54, 152, 244).withOpacity(0.5))),
            onPressed: () {
              print("Text Button");
            },
            icon: Icon(Icons.add),
            label: Text("Text Button")),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 54, 244, 225),
                onPrimary: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: Text("Elevated Button")),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_alarm),
            label: Text("Elevated Button")),
        OutlinedButton(onPressed: () {}, child: Text("Outlined button")),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_a_photo_sharp),
            label: Text("Outlined button"))
      ],
    );
  }
}
