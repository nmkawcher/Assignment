import 'package:assignment/controller/country_controller.dart';
import 'package:assignment/model/country_model.dart';
import 'package:assignment/routes.dart';
import 'package:assignment/view/country_details/country_details_screen.dart';
import 'package:assignment/view/country_screen/country_screen.dart';
import 'package:assignment/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'di_init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final navigatorKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: "Assignment",
      initialRoute: Routes.splashScreen,
      defaultTransition: Transition.topLevel,
      transitionDuration: Duration(milliseconds: 500),
      getPages: [
        GetPage(name: Routes.countryScreen, page: ()=>CountryScreen()),
        GetPage(name: Routes.splashScreen, page: ()=>SplashScreen()),
        GetPage(name: Routes.countryDetails, page: ()=>CountryDetailsScreen(response: MainCountryResponse(name: Get.parameters['name']))),
      ],
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,

    );
  }
}
