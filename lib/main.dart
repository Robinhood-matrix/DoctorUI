import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:santosh/HomePage.dart';
import 'package:santosh/controller/doctorController.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DoctorContoller()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Rubik'),
      debugShowCheckedModeBanner: false,
      title: "UI",
      home: HomePage(),
      
    );
  }
}
