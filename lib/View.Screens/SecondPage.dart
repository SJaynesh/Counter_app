import 'package:code/Controllers/Counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // find a dependency
  Counter_Controller cc = Get.find<Counter_Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Counter_Controller>(builder: (_) {
              return Text(
                "${cc.c1.counter}",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              );
            }),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
