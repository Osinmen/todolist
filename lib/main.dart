import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/firebase_options.dart';
import 'package:todolist/pages/authentication/loginScreen.dart';
import 'package:todolist/pages/authentication/signupScreen.dart';
import 'package:todolist/pages/initialPages/onboarding.dart';
import 'package:todolist/pages/taskPages/task_page.dart';
import 'package:todolist/providers/task_provider.dart';
import 'package:todolist/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.data != null) {
            return const TaskPage();
          }
          return Loginscreen();
        },
      ),
    );
  }
}
