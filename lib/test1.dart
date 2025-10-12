import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}
class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        backgroundColor: Color(0xff181a20),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
      
          Icon(Icons.arrow_back, color: Colors.white),
          20.height,
          Text("join plantify today ",  style: TextStyle(
            color: Colors.white, 
          ),),
          100.height,
          Container (
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff1f222a), 
              borderRadius: BorderRadius.circular(20), 
            ),
          )

        ],),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(color: Colors.red,
            height: 50,
            width: 50,
            ), 
            20.height,
            FloatingActionButton(onPressed: (){}, child: Icon(Icons.edit),)
          ]
        
        ),
bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: "hey"), BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Home")]),
      ),
    );
  }
}