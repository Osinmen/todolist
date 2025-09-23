import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/providers/task_model.dart';
import 'package:todolist/providers/task_provider.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Text("title"),
              TextField(controller: controller),
              10.height,
              TextField(controller: controller2),
              Expanded(
                child: ListView.builder(
                  itemCount: value.list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      color: Colors.grey,
                      child: ListTile(
                        title: Text(value.list[index].title.toString()),
                        subtitle: Text(value.list[index].description.toString()),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              context.read<TaskProvider>().addTasks(
                TaskModel(
                  title: controller.text,
                  description: controller2.text,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
