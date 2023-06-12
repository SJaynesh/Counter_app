import 'package:code/View.Screens/HomePage.dart';
import 'package:code/View.Screens/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/SecondPage", page: () => SecondPage()),
      ],
    ),
  );
}
