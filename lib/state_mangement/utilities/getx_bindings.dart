import 'package:get/get.dart';
import 'package:getx_course/state_mangement/controller/get_x_controller.dart';

class GetxBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(GetXController(), permanent: true);
    // Get.lazyPut(() => GetBuilderController(), fenix: true);
    
  }
}
