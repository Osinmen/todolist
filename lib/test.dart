import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/task_card/task_card.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Future<void> addtasks() async {
    final tasks = await FirebaseFirestore.instance.collection("tasks").add({
      "title": titleController.text.trim(),
      "description": descriptionController.text.trim(),
      "creator": FirebaseAuth.instance.currentUser!.uid,
      "date Created": FieldValue.serverTimestamp(),
    });

    print(tasks.id);
  }
  //this is the function that is used to pick image from gallery 
  
 

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.blue),
        onPressed: () {
          openDialog();
        },
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("tasks").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TaskCard(
                    title: snapshot.data!.docs[index].data()["title"],
                    description: snapshot.data!.docs[index]
                        .data()["description"],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("this is the container to show there is erro"),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: const CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data!.docs.isEmpty) {
            return Center(
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                  child: Text("this is a fucking red flag"),
                ),
              ),
            );
          } else {
            return Text("na you come know of");
          }
        },
      ),
    );
  }

  Future<void> openDialog() async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.blue,
          insetPadding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Task",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),

                  015.height,
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      hintText: "Title",
                      hintStyle: AppTextStyles.heading2,
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  10.height,
                  TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      hintText: "Description",
                      hintStyle: AppTextStyles.heading2,
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addtasks();
                      Navigator.pop(context);
                    },
                    child: Text("Add Task"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
