import 'dart:convert';

import 'package:azkar/cons.dart';
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
        "$baseUrl/$zekr.json");
    var response = await http.get(url);
   try {
     if(response.statusCode==200){
       getData=true;
       var responseBody = json.decode(response.body);
       for (var i in responseBody["content"]) {
         azkarList.add(Model.fromJson(i));
         update();
       }
     }
   }catch(e){
     print(e);
   }
   }
  }




