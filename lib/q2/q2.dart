import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_12_1/q2/class.dart';




class Q2 extends StatefulWidget {
  @override
  Q2State createState() => Q2State();
}

class Q2State extends State<Q2> {
   Students student=Students();

  TextEditingController nameController = TextEditingController();
   TextEditingController gradeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextFormField(
              controller: gradeController,
              decoration: InputDecoration(labelText: "Grade"),

            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                student.name = nameController.text;
                student.grade = gradeController.text;
                nameController.clear();
                gradeController.clear();
                setState(() {

                });
              },
              child: Text("Update"),
            ),
            SizedBox(height: 20),
            Text("Name: ${student.sname}",style: TextStyle(fontSize: 25),),
            Text("Grade: ${student.sgrade}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}