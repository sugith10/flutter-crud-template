import 'package:flutter/material.dart';
import 'package:flutter_crud/page/home_page.dart';
import 'package:flutter_crud/util/color.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD',
      theme: ThemeData(
          scaffoldBackgroundColor: Vx.hexToColor('#e8eddd'),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: greenTouch,
          )),
      home: const HomePage(),
    );
  }
}
