
import 'package:assignment/data/repo/country_repo.dart';
import 'package:assignment/model/country_model.dart';
import 'package:get/get.dart';

class CountryController extends GetxController implements GetxService{

  late final CountryRepo countryRepo;
  CountryController({required this.countryRepo});

  List<MainCountryResponse> _list =[];
  List<MainCountryResponse> get list=>_list;

  Future<void>getListData() async{
    Response r=await countryRepo.getCountryList();
    // print("rddrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr:${r.body}");
    if(r.statusCode==200){
      _list=[];
      r.body.forEach((e){
        _list.add(MainCountryResponse.fromJson(e));
      });
    }else{
      print(r.body);
    }

    update();
  }
}