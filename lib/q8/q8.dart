import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_12_1/q8/class.dart';





class Q8 extends StatefulWidget {
  @override
  Q8State createState() => Q8State();
}

class Q8State extends State<Q8> {
  User user=User();

  TextEditingController nameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();


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
              controller: PasswordController,
              decoration: InputDecoration(labelText: "Password"),

            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                user.name=nameController.text;
                user.password=int.parse(PasswordController.text);
                setState(() {

                });
                nameController.clear();
                PasswordController.clear();

              },
              child: Text("Update"),
            ),
            SizedBox(height: 20),
            Text("Name: ${user.username}",style: TextStyle(fontSize: 25),),
            Text("Password: ${user.pass}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}