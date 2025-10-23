import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';

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
        backgroundColor: Colors.white,
        body: Column( 
          children: <Widget> [
            100.height,
            Container(
              padding: const EdgeInsets.all(10),
              height: 120,
              decoration: BoxDecoration(
              color: AppColors.textPrimary, 
              borderRadius: BorderRadius.circular(10), 
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: BoxBorder.all(
                        color: Colors.white,
                        width: 1
                      )
                    ),
                  ), 
                  12.width, 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("this is a creative modern task", style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold, 
                        fontSize: 14
                      ),), 
                      Text("Create a modern style description", 
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 12, 
                        
                      ),),
                      10.height,
                      Row(children: [
                        Container(
                          height: 20,
                          width: 70,
                        decoration: BoxDecoration(
                          border: BoxBorder.all(
                            color: Colors.blue, 
                            width: 1.0
                          )
                        ),
                        ), 
                        12.width ,
                          Row(children: [
                        Container(
                          height: 20,
                          width: 70,
                        decoration: BoxDecoration(
                          border: BoxBorder.all(
                            color: Colors.blue, 
                            width: 1.0
                          )
                        ),
                        ), 
                        
                      ],), 
                      12.width,
                        Row(children: [
                        Container(
                          height: 20,
                          width: 70,
                        decoration: BoxDecoration(
                          border: BoxBorder.all(
                            color: Colors.blue, 
                            width: 1.0
                          )
                        ),
                        ), 
                        
                      ],)
                      ],), 
                      
                    ],
                  )
                ],
              )
            )
          ]
        )
      ));
  
  }
}