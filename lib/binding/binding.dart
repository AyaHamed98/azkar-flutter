import 'package:azkar/controller/azkar_category_controller.dart';
import 'package:get/instance_manager.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AzkarController());

  }

}