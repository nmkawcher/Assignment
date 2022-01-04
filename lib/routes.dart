
import 'package:assignment/model/country_model.dart';
import 'package:assignment/view/country_details/country_details_screen.dart';
import 'package:assignment/view/country_screen/country_screen.dart';
import 'package:assignment/view/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import 'view/splash_screen/splash_screen.dart';

class Routes{

  static const String splashScreen='/splash_screen';
  static const String countryScreen='/country';
  static const String countryDetails='/country-details';

//  static String getScreenDetailsRoute(String name) => '$countryDetails?page=$name';

  /*static List<GetPage>pages=[
    GetPage(name: splashScreen, page: ()=> SplashScreen()),
    GetPage(name: countryScreen, page: ()=>CountryScreen()),
    GetPage(name: countryDetails, page: ()=>Get.arguments!=null?Get.arguments:CountryDetailsScreen(response: MainCountryResponse(name: Get.parameters['name']),)),
  ];*/



}