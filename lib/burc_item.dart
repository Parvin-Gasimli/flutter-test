import 'package:flutter/material.dart';
import 'package:project/burc_detail.dart';
import 'package:project/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listenenBurclar;
  const BurcItem({required this.listenenBurclar, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/burcDetay",
                arguments: listenenBurclar);
          },
          leading:
              Image.asset("assets/images/" + listenenBurclar.burcKucukResim),
          title: Text(listenenBurclar.burcAdi, style: myTextStyle.headline5),
          subtitle:
              Text(listenenBurclar.burcTarihi, style: myTextStyle.subtitle1),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
