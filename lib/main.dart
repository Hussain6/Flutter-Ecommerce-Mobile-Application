import 'package:flutter/material.dart';
import 'package:splash/screens/getStartedScreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFF8000FF),
          appBarTheme: const AppBarTheme(color: Color(0xFF8000FF))),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: getstarted(),
      ),
    );
  }
}
