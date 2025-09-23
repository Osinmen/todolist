import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/providers/task_model.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/bottombar/bottombar..dart';
import 'package:firebase_auth/firebase_auth.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Assets.icons.sort.image(),
        title: Text("Index", style: AppTextStyles.heading2),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.only(right:10), 
          child: CircleAvatar(backgroundColor: Colors.blue, radius: 23))],
      ),
      body: Consumer<TaskProvider>(
        builder: (context, value, child) {
          if (value.list.isEmpty) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 120),
                      child: Assets.images.checklistRafiki1.image(),
                    ),
                  ),
                  Text("What do you want to do today?", style: AppTextStyles.heading2,), 
                  15.height,
                  Text("Tap + to add to your tasks",
                  style: TextStyle(color: Colors.white, 
                  fontSize: 12, 
                  fontWeight: FontWeight.bold),)
                ],
              ),
            );
          } else {
            return ListView.builder(
              itemCount: value.list.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.textPrimary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text("${value.list[index].title}"),
                    subtitle: Text("${value.list[index].description}"),
                    leading: Text("${value.list[index].id}"),
                  ),
                );
              },
            );
          }
        },
      ),

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
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      hintText: "Description", 
                      hintStyle: AppTextStyles.heading2, 
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none
                      ), 
                      focusedBorder:  OutlineInputBorder(
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
                      context.read<TaskProvider>().addTasks(
                        TaskModel(
                          title: controller.text,
                          description: "jdkjd s",
                        ),
                      );
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


