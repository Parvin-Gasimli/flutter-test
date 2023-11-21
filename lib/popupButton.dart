import 'package:flutter/material.dart';

class PopupButtonExample extends StatefulWidget {
  const PopupButtonExample({super.key});

  @override
  _PopupButtonExample createState() => _PopupButtonExample();
}

class _PopupButtonExample extends State<PopupButtonExample> {
  String _selectCity = 'Select';
  List<String> _Colors = ["Red", "Blue", "Green", "Yellow"];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PopupMenuButton(onSelected: (value) {
      setState(() {
        _selectCity = value.toString();
      });
    },
            // icon: Icon(Icons.add),
            // child: Text(_selectCity),
            itemBuilder: (BuildContext context) {
      return _Colors.map((e) => PopupMenuItem(
            value: e,
            child: Text(e),
          )).toList();
    }));
  }
}
