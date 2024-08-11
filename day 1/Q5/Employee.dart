class Employee{
  int? _id;
  String? _name;
  int? _salary;
   Employee(this._id,this._name,this._salary);

   int? get getEmpid=>_id;
   String? get getEmpname=>_name;
   int? get getEmpsalary=>_salary; 
}