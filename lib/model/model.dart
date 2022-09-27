class Model{
  String zekr,bless;
  int repeat;
  int count=0;
  Model({required this.zekr,required this.bless,required this.repeat});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      zekr: json["zekr"],
      bless: json["bless"],
      repeat: json["repeat"],
    );
  }
//

}