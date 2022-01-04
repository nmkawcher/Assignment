import 'package:assignment/controller/country_controller.dart';
import 'package:assignment/routes.dart';
import 'package:assignment/view/country_details/country_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Get.find<CountryController>().getListData();
    return GetBuilder<CountryController>(
        builder:(country)=> Scaffold(
          appBar: AppBar(title: Text("Assignment"),),
          body: SafeArea(
            child: country.list.length > 0 ? GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,  crossAxisSpacing: 0, mainAxisSpacing: 0, childAspectRatio: 1/0.5),
                itemCount: country.list.length,
                itemBuilder: (context,index){
                print('VVVVVVVVVVVVVVVVVVVVVVVVV${country.list.length}');
                return InkWell(
                  onTap: (){
                    //  Get.toNamed(Routes.getScreenDetailsRoute("${country.list[index].name}"),arguments: CountryDetailsScreen(response: country.list[index]));
                    Get.to(CountryDetailsScreen(response: country.list[index]));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius: BorderRadius.circular(10)),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.center,mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.network(
                          country.list[index].flags!.svg.toString(),
                          semanticsLabel: 'A shark?!',
                          height: 30,
                          width: 30,
                          placeholderBuilder: (BuildContext context) => Container(
                              padding: const EdgeInsets.all(10.0),
                              child: const CupertinoActivityIndicator()),
                        ),
                        Expanded(child: Text("${country.list[index].name}", overflow: TextOverflow.ellipsis, maxLines: 1,)),
                      ],
                    ),
                  ),
                );
              }
            ): const Center(child: CircularProgressIndicator(color: Colors.red,),),
          ),
        )
    );
  }
}
