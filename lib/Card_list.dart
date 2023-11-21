import 'package:flutter/material.dart';

class CardListExample extends StatelessWidget {
  const CardListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card List Example"),
        ),
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
                onlyListExample(),
              ],
            )
          ]),
        ));
  }
}

class onlyListExample extends StatelessWidget {
  const onlyListExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            color: Colors.blue.shade300,
            shadowColor: Colors.black,
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: const BorderSide(color: Colors.white10, width: 1)),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.add),
              ),
              title: Text(
                "Card Title",
                style: TextStyle(color: Colors.white),
              ),
              subtitle:
                  Text("Card Subtitle", style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.add, color: Colors.white),
            )),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
