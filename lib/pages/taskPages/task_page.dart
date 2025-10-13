import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/models/task_model.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/test.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/bottombar/bottombar..dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todolist/widgets/task_card/task_card.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  //function to ad tasks to firebase firestore using

  Future<void> addTasksToDb() async {
    final tasks = await FirebaseFirestore.instance
        .collection("user_tasks")
        .add({
          "title": controller.text.trim(),
          "Date Created": FieldValue.serverTimestamp(),
          "creator": FirebaseAuth.instance.currentUser!.uid,
          "description": descriptionController.text.trim(),
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Future<void> signout() async {
              await FirebaseAuth.instance.signOut();
            }
          },
          child: Assets.icons.sort.image(),
        ),
        title: Text("Index", style: AppTextStyles.heading2),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(backgroundColor: Colors.blue, radius: 23),
          ),
        ],
      ),
      body: Consumer<TaskProvider>(builder: (context, value, child) {
      if(value.list.isEmpty) {
        return SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 120),
                      child: Assets.images.checklistRafiki1.image(),
                    ),
                  ),
                  Text(
                    "What do you want to do today?",
                    style: AppTextStyles.heading2,
                  ),
                  15.height,
                  Text(
                    "Tap + to add to your tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
      }  else {
        return ListView.builder(
          itemCount: value.list.length,
          itemBuilder: (context, index) {
          return Container(
            color: AppColors.textPrimary,
            child: ListTile(
            
            ),
          );
        });
      }
      }),

      bottomNavigationBar: BottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: AppColors.secondaryButtonColor,
        shape: const CircleBorder(),

        child: Assets.icons.add.image(),
        onPressed: () {
          //implement to do action
          _openScreenDialog();
        },
      ),
    );
  }

  Future<void> _openScreenDialog() async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.textPrimary,
          insetPadding: EdgeInsets.all(20),
          child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    controller: controller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      hintText: "Add Task Here",
                      hintStyle: AppTextStyles.heading2,
                      border: OutlineInputBorder(
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
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        addTasksToDb();
                        Navigator.pop(context);
                      },
                      child: Text("Add Task"),
                    ),
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
