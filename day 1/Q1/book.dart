class Book{
  String? _title;
  String? _auther;
  int? _price;

  set settitle(String title){
      this._title=title;
  }

  set setauther(String auther){
    this._auther=auther;
  }

  set setprice(int price){
    this._price=price;
  }

 String? get gettitle => _title;
 String? get getauther {
  return _auther;
 }
 int? get getprice => _price;


  

}