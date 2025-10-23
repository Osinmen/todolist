import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/custom_classes/category_class/category_class.dart';
import 'package:todolist/firebase_options.dart';
import 'package:todolist/pages/add_category_screen.dart';
import 'package:todolist/pages/authentication/loginScreen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/pages/initialPages/onboarding.dart';
import 'package:todolist/pages/taskPages/task_page.dart';
import 'package:todolist/pages/user_profile/user_profile.dart';
import 'package:todolist/providers/category_color_provider.dart';
import 'package:todolist/providers/category_provider.dart';
import 'package:todolist/providers/date_provder.dart';
import 'package:todolist/providers/icon_provider.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todolist/test1.dart';
import 'package:todolist/themes/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return TaskProvider();
          },
        ),
        ChangeNotifierProvider(create: (_) {
          return CategoryProvider();
        }), 
        ChangeNotifierProvider(create: (_) {
          return CategoryColorProvider();
        }), 
        ChangeNotifierProvider(create: (_) {
          return IconProvider();
        }), 
        ChangeNotifierProvider(create: (context) {
          return DateProvider();
        })
      ],
      
      child: const MyApp(),
    ),
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const TaskPage(),
    
    );
  }
}
