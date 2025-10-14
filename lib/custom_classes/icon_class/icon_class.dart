import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/providers/icon_provider.dart';
import 'package:todolist/themes/colors.dart';

class IconClassLibrary {
  static Future<void> openIconLibrary(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.textPrimary,
          insetPadding: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 300,
              child: Column(
                children: [
                  Text(
                    "Choose you Custom Icon",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  10.height,
                  Divider(thickness: 0.8, color: Colors.grey),
                  20.height,
                  Consumer<IconProvider>(
                    builder: (context, value, child) {
                      return Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                          scrollDirection: Axis.vertical,

                          itemCount: value.icons.length,
                          itemBuilder: (context, index) {
                           
                            return InkWell(
                              onTap: () {
                                value.setSelectedIcon(value.icons[index]);
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    fit: BoxFit.contain,
                                    value.icons[index].toString(),
                                    height: 10,
                                    width: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
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
