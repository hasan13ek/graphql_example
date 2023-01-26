import 'package:flutter/material.dart';
import 'package:graphql_example/api/api.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.countryModel}) : super(key: key);
  final CountryModel countryModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Davlat Nomi",style: TextStyle(color: Colors.white),),
                  Text(countryModel.name,style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Davlat Poytaxti",style: TextStyle(color: Colors.white),),
                  Text(countryModel.capital,style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Davlat Millati",style: TextStyle(color: Colors.white),),
                  Text(countryModel.native,style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Davlat Bayrog'i",style: TextStyle(color: Colors.white),),
                  Text(countryModel.emoji,style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Davlat Pul Birligi",style: TextStyle(color: Colors.white),),
                  Text(countryModel.currency,style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
