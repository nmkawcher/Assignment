
import 'package:assignment/controller/country_controller.dart';
import 'package:assignment/data/repo/country_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {


  // Repository
  Get.lazyPut(() => CountryRepo());

  // Controller

  Get.lazyPut(() => CountryController( countryRepo: Get.find()));


}