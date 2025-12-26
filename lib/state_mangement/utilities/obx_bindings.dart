import 'package:get/get.dart';
import 'package:getx_course/state_mangement/controller/obx_controller.dart';

class ObxBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ObxController(), permanent: true);
    // Get.lazyPut(() => ObxController(), fenix: true);
  }
}
