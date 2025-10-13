import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/models/category_model.dart';
import 'package:todolist/providers/category_provider.dart';
import 'package:todolist/themes/colors.dart';

class CategoryClass {
  static Future<void> opencatergoryClass(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          backgroundColor: AppColors.textPrimary,
          insetPadding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Consumer<CategoryProvider>(
              builder: (context, value, child) {
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: value.categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              //work to do here
                              // if(value.categories[index].name == "Create New") {
                              //   value.categories.add(CategoryModel(
                              //     name: , 
                              //     iconPath: iconPath, 
                              //     categoryColor: categoryColor
                              //     ));
                              // } else {
                              //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                              //     return 
                              //   }));
                              // }
                            },
                            child: Container(
                                                     
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: value.categories[index].categoryColor,
                              ),
                              child: Image.asset(
                                height: 70,
                                width: 60,
                                value.categories[index].iconPath.toString(),
                              ),
                            ),
                          ),
                          7.height,
                          Text(value.categories[index].name.toString(), style: TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold
                
                          ),)
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
