import 'package:get/get.dart';

class ApiClient extends GetConnect {


  /*var _mainHeaders = {
    'Content-Type': 'application/json; charset=UTF-8',
  };*/

  Future<Response> getResponse()=> get('https://restcountries.com/v2/all');

}
