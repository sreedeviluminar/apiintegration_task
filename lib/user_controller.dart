import 'package:apiintegration_task/Model.dart';
import 'package:apiintegration_task/service.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UserController extends GetxController{
  RxList<UserData> posts = RxList();
  var url = "https://mysaving.in/IntegraAccount/api/myaddresssample.php";
  getData() async {
    var response = await DioService().getMethod(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
          posts.add(UserData.fromJson(element));
        },
      );
    }print(response);

  }
}