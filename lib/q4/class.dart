class Product {
  int _id;
  String _name;
  double _price;

  Product(this._id, this._name, this._price);

  int get id => _id;

  String get name => _name;

  set name(String Name) {
    _name = Name;
  }

  set id(int id) {
    _id = id;
  }

  set price(double price) {
    _price = price;
  }

  double get price => _price;


}
