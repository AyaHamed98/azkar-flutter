import 'package:azkar/controller/azkar_category_controller.dart';
import 'package:azkar/controller/home_controller.dart';
import 'package:get/instance_manager.dart';

import '../controller/tasbeh_controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AzkarController());
    Get.lazyPut(() => TasbehController());

  }

}