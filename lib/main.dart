import 'package:flutter/material.dart';
import 'package:project/burc_list.dart';
import 'package:project/route_generator.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      title: 'Burclar',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      onGenerateRoute: RouteGenrator.routeGenerator,
      initialRoute: "/burcListesi",
    );
  }
}
