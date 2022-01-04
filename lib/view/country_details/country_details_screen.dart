import 'package:assignment/model/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountryDetailsScreen extends StatelessWidget {
  const CountryDetailsScreen({Key? key,required this.response}) : super(key: key);
  final MainCountryResponse response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details'),),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            SvgPicture.network(
             response.flags!.svg.toString(),
              semanticsLabel: 'A shark?!',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const CupertinoActivityIndicator()),
            ),
           getCard("Name:${response.name.toString()}","Native Name: ${response.nativeName.toString()}","Alter Spellings:${response.altSpellings!.first}"),
            SizedBox(height: 6,),
            getCard("Capital: ${response.capital.toString()}", "Currency:${response.currencies![0].name}","Sub Region ${response.subregion.toString()}"),
            SizedBox(height: 6,),
            getCard("Language: ${response.languages![0].name}", "Population:${response.population}","Translation: ${response.translations!.br}"),
            SizedBox(height: 6,)

          ],
        ),
      ),
    );
  }

  Widget getCard(String value1,String value2,String value3){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value1,maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
            SizedBox(height: 5,),
            Text(value2,maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent,),),
            SizedBox(height: 5,),
            Text(value3,maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,),),
          ],
        ),
      ),
    );
  }
}
