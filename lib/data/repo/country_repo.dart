import 'package:get/get.dart';

class CountryRepo extends GetConnect{
  Future<Response> getCountryList() async {
    return await get('https://restcountries.com/v2/all');
  }
}