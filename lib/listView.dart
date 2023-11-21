// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});
  List<Student> students = List.generate(
      500,
      (index) => Student(
            id: index,
            name: "Student Name $index",
            surname: "Student Surname $index",
          ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            var newStu = students[index];
            return Card(
              color: index % 2 == 0 ? Colors.black : Colors.blue,
              child: ListTile(
                onTap: () => {
                  if (index % 2 == 0)
                    {
                      EasyLoading.instance.backgroundColor = Colors.red,
                    }
                  else
                    {
                      EasyLoading.instance.backgroundColor = Colors.blue,
                    },
                  EasyLoading.showToast("element clikded",
                      duration: Duration(seconds: 2),
                      toastPosition: EasyLoadingToastPosition.top,
                      dismissOnTap: true)
                },
                leading: CircleAvatar(
                  child: Text(
                    newStu.id.toString(),
                  ),
                ),
                title: Text(
                  newStu.name.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(newStu.surname.toString(),
                    style: TextStyle(color: Colors.white)),
                trailing: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            );
          },
          itemCount: students.length),
    );
  }

  ListView ClassicListView() {
    return ListView(
      children: students
          .map((Student stu) => ListTile(
                leading: CircleAvatar(
                  child: Text(
                    stu.id.toString(),
                  ),
                ),
                title: Text(stu.name.toString()),
                subtitle: Text(stu.surname.toString()),
                trailing: Icon(Icons.add),
              ))
          .toList(),
    );
  }
}

class Student {
  final int? id;
  final String? name;
  final String? surname;
  Student({
    this.id,
    this.name,
    this.surname,
  });
}
