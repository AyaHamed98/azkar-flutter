import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;

import '../model/model.dart';
class AzkarController extends GetxController{
  List<Model>azkarList=[];
  bool getData=false;

  Future<void>getAzkarAlSabah(String zekr)async {
    getData=false;
    azkarList.clear();
    var url = Uri.parse(
        "https://ahegazy.github.io/muslimKit/json/$zekr.json");
    var response = await http.get(url);
    getData=true;
    var responseBody = json.decode(response.body);
    for (var i in responseBody["content"]) {
      azkarList.add(Model.fromJson(i));
      update();
    }

    print(azkarList[0].zekr);
  }




}
