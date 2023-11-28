import 'package:flutter/material.dart';
import 'package:project/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetail extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetail({required this.secilenBurc, super.key});

  @override
  State<BurcDetail> createState() => _BurcDetailState();
}

class _BurcDetailState extends State<BurcDetail> {
  Color? appbarColor = Colors.pink;
  late PaletteGenerator? paletteGenerator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      appbarRengBul();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: appbarColor,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title:
                    Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
                centerTitle: true,
                background: Image.asset(
                  "assets/images/" + widget.secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover,
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appbarRengBul() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/" + widget.secilenBurc.burcBuyukResim));
    appbarColor = paletteGenerator?.dominantColor!.color;

    setState(() {
      appbarColor = paletteGenerator?.dominantColor!.color;
    });
  }
}
