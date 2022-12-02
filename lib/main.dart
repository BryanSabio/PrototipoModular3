// ignore_for_file: unused_import

import 'package:flutter/material.dart';
//import 'package:perfilesfirebase/Login.dart';
import 'package:flutter_application_1/main_page.dart';
import 'Login.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
