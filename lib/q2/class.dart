class Students{
  String? _name;
  String? _grade;

  set name(String name){
    this._name=name;
  }
  set grade(String grade){
    this._grade=grade;
  }
  get sname=> _name;
  get sgrade=> _grade;

}