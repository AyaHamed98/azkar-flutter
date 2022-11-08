import 'package:get/get.dart';

class TasbehController extends GetxController{
  int tasbehCounter=0;
  int hamdCounter=0;
  int takbeerCounter=0;

  void changeTasbehNumber(){
    if(tasbehCounter<33){
      tasbehCounter++;
    }else{
      tasbehCounter=0;
    }
    update();
  }

  void changeHamdNumber(){
    if(hamdCounter<33){
      hamdCounter++;
    }else{
      hamdCounter=0;
    }
    update();
  }

  void changeTakbeerNumber(){
    if(takbeerCounter<33){
      takbeerCounter++;
    }else{
      takbeerCounter=0;
    }
    update();
  }
}
