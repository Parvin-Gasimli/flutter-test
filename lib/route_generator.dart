import 'package:flutter/material.dart';
import 'package:project/burc_detail.dart';
import 'package:project/burc_list.dart';
import 'package:project/model/burc.dart';

class RouteGenrator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => BurcListesi());
      case "/burcListesi":
        return MaterialPageRoute(builder: (context) => BurcListesi());
      case "/burcDetay":
        final Burc secilenBurc = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetail(
                  secilenBurc: secilenBurc,
                ));
      default:
        return MaterialPageRoute(builder: (context) => BurcListesi());
    }
  }
}
