class User{
  String? _Username;
  int? _password;

  set name(String name){
    this._Username=name;
  }
  set password(int password){
    this._password=password;
  }
  get username=> _Username;
  get pass=> _password;

}