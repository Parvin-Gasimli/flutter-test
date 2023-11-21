import 'package:flutter/material.dart';

class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({super.key});

  @override
  _DropDownButton createState() => _DropDownButton();
}

class _DropDownButton extends State<DropDownButtonExample> {
  String? _selectCity = null;
  List<String> _cities = ["Ankara", "Baku", "Rusiya", "China"];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownButton<String>(
      hint: Text("Select City"),
      icon: Icon(Icons.arrow_downward),
      iconSize: 20,
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 77, 130, 255),
      ),
      style: TextStyle(color: Colors.black),
      items: _cities
          .map((e) => DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              ))
          .toList(),
      value: _selectCity,
      onChanged: (String? value) {
        setState(() {
          _selectCity = value;
        });
      },
    ));
    ;
  }
}
