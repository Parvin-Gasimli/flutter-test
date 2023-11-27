import 'package:flutter/material.dart';

class listViewLayoutProblem extends StatelessWidget {
  const listViewLayoutProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Example"),
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 4),
          ),
          child: Column(
            children: [
              Text("Started"),
              Expanded(
                child: ListView(
                  // shrinkWrap: false,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 1"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 2"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 3"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 4"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 5"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 6"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 7"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 4),
                      ),
                      child: ListTile(
                        title: Text("ListTile 8"),
                      ),
                    ),
                    Text("Ended")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
