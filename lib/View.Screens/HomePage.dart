import 'package:code/Controllers/Counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // inject a dependency
  Counter_Controller cc =
      Get.put(Counter_Controller()); // return an object of controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GetBuilder<Counter_Controller>(
              builder: (_) => Text(
                "${cc.c1.counter}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed("/SecondPage");
              },
              child: Text("Next Page"),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GetBuilder<Counter_Controller>(builder: (_) {
            return FloatingActionButton(
              heroTag: "Hero1",
              onPressed: () {
                cc.increment();
              },
              child: Icon(Icons.add),
            );
          }),
          SizedBox(
            width: 10,
          ),
          GetBuilder<Counter_Controller>(builder: (_) {
            return FloatingActionButton(
              heroTag: "Hero2",
              onPressed: () {
                cc.decrement();
              },
              child: Icon(Icons.remove),
            );
          }),
        ],
      ),
    );
  }
}
