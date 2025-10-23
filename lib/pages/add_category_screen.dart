import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/custom_classes/category_class/category_class.dart';
import 'package:todolist/custom_classes/icon_class/icon_class.dart';
import 'package:todolist/extensions/sized_box_extensions.dart';
import 'package:todolist/gen/assets.gen.dart';
import 'package:todolist/main.dart';
import 'package:todolist/models/category_model.dart';
import 'package:todolist/providers/category_color_provider.dart';
import 'package:todolist/providers/category_provider.dart';
import 'package:todolist/providers/icon_provider.dart';
import 'package:todolist/themes/colors.dart';
import 'package:todolist/themes/textThemes.dart';
import 'package:todolist/widgets/buttons/colour_action_button.dart';
import 'package:todolist/widgets/buttons/non_coloured_action_button.dart';
import 'package:todolist/widgets/category_screen_widgets/category_textfield.dart';
import 'package:todolist/widgets/category_screen_widgets/icon_button.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.height,
                Text(
                  "Create New Category",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                20.height,
                Text(
                  "Category Name: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                20.height,
                CategoryTextfield(controller: controller),
                20.height,
                Text(
                  "Category icon: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                20.height,
                GestureDetector(
                  onTap: () {
                    //implement the fucntionaliuty
                    IconClassLibrary.openIconLibrary(context);
                  },
                  child: Consumer<IconProvider>(
                    builder: (context, value, child) {
                      return SizedBox(
                        height: 50,
                        child: value.selectedIcon != null
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.textPrimary,
                                ),
                                child: Image.asset(
                                  value.selectedIcon.toString(),
                                  color: Colors.white,
                                  height: 30,
                                  width: 30,
                                ),
                              )
                            : const IconCategoryButton(),
                      );
                    },
                  ),
                ),
                20.height,
                Text(
                  "Category Color: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                20.height,
                SizedBox(
                  height: 50,
                  child: Consumer<CategoryColorProvider>(
                    builder: (context, value, child) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: context
                            .watch<CategoryColorProvider>()
                            .colors
                            .length,
                        itemBuilder: (context, index) {
                          final isSelected =
                              value.selectedColor == value.colors[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRect(
                              clipBehavior: Clip.hardEdge,
                              child: GestureDetector(
                                onTap: () {
                                  value.setSelctedColor(value.colors[index]);
                                },
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: context
                                        .watch<CategoryColorProvider>()
                                        .colors[index],
                                    shape: BoxShape.circle,
                                  ),
                                  child: isSelected
                                      ? Assets.category.check.image()
                                      : SizedBox(),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                200.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Expanded(
                    child: NonColouredActionButton(
                      buttonTitle: "Cancel",
                      onPressed: () {
                        Navigator.pop(context);
                    
                  })
                  ),
                  10.width,
                  Expanded(
                    child: ColouredActionButton(
                      buttonTitle: "Create Category",
                      onPressed: () {
                      
                          final selectedIcon = context
                              .read<IconProvider>()
                              .selectedIcon;
                          context.read<CategoryProvider>().add(
                            CategoryModel(
                              name: controller.text.trim() == "Create User"
                                  ? throw Exception(
                                      "you cannot use this name please",
                                    )
                                  : controller.text.trim(),
                              iconPath: selectedIcon,
                              categoryColor: context
                                  .read<CategoryColorProvider>()
                                  .selectedColor!,
                            ),
                          );
                          CategoryClass.opencatergoryClass(context);
                    }),
                  ) 
                
                  ],
                ),
                20.height
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//implement
