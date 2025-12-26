import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:getx_course/state_mangement/controller/get_builder_controller.dart';

class GetBuilderBindings implements Bindings {
  @override
  void dependencies() {
    // Get.put(GetBuilderController(), permanent: true);
    Get.lazyPut(() => GetBuilderController(), fenix: true);
    // Get.find();
  }
}
