import 'package:get/get.dart';
import 'package:movie/app/data/movie_models.dart';
import 'package:movie/app/service/movie_service.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  //TODO: Implement HomeController

  @override
  void onInit() {
    super.onInit();
    MovieService().fetchMovie().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
