import 'package:flutter/material.dart';

class AddTask {

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