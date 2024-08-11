class Car{
  String? _brand;
  String? _model;
  int? _year;


  void setter(String brand,String model,int year){
    this._brand=brand;
    this._model=model;
    this._year=year;

  }

  void getter(){
    print("Brand of car: ${_brand}");
    print("Model of car: ${_model}");
    print("yeay of car: ${_year}");
  }

}