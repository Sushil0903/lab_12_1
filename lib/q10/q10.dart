import 'package:flutter/material.dart';
import 'package:lab_12_1/q10/class.dart';

class Q10 extends StatefulWidget {
  const Q10({super.key});

  @override
  State<Q10> createState() => _Q10State();
}

class _Q10State extends State<Q10> {

  Task task=Task(title: "h");
  TextEditingController taskcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        title: Text("Taskbar"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: taskcontroller,
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Task name"),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
           taskbar.add(Task(title: taskcontroller.text));
           taskcontroller.clear();
           setState(() {

           });


          }, child: Text("Add")),
          Expanded(
            child: ListView.builder(
              itemCount: taskbar.length,
              itemBuilder: (context, index) {
              return ListTile(
                title: Text("${taskbar[index].title}"),
                trailing: Checkbox(onChanged: (value) {
                  taskbar[index].istask=value??false;
                  setState(() {

                  });
                }, value: taskbar[index].iscomplate),
              );
            },),
          )
        ],
      ),
    );
  }
}

List<Task> taskbar=[];
