import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "q2");
              },
              child: Container(height: 50,color: Colors.red,child: Center(child: Text("Q.2",style: TextStyle(color: Colors.white,fontSize: 20),),),)),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "q4");
              },
              child: Container(height: 50,color: Colors.amber,child: Center(child: Text("Q.4",style: TextStyle(color: Colors.white,fontSize: 20),),),)),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "q8");
              },
              child: Container(height: 50,color: Colors.deepOrange,child: Center(child: Text("Q.8",style: TextStyle(color: Colors.white,fontSize: 20),),),)),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "q10");
              },
              child: Container(height: 50,color: Colors.pink,child: Center(child: Text("Q.10",style: TextStyle(color: Colors.white,fontSize: 20),),),)),
        ],
      ),
    );
  }
}
