import 'Employee.dart';

void main(){
  Employee E=Employee(54, "Harsh vasoya", 16000);
  Employee E2=Employee(23, "JAyveer dabhi", 12000);
  Employee E3=Employee(55,"Karan", 30000);

  print("INformation of Employees");
  print("id:${E.getEmpid},Name:${E.getEmpname},Salary:${E.getEmpsalary}\n");
  print("id:${E2.getEmpid},Name:${E2.getEmpname},Salary:${E2.getEmpsalary}\n");
  print("id:${E3.getEmpid},Name:${E3.getEmpname},Salary:${E3.getEmpsalary}");
  
}