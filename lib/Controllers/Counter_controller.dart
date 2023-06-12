import 'package:code/Models/Counter_model.dart';
import 'package:get/get.dart';

class Counter_Controller extends GetxController {
  Counter_model c1 = Counter_model(counter: 0);

  void increment() {
    c1.counter++;
    update();
  }

  void decrement() {
    if (c1.counter > 0) {
      c1.counter--;
    } else {
      c1.counter = 0;
    }
    update();
  }
}
