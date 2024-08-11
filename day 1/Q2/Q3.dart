import 'Bank.dart';
void main(){
  BankAccount ba=BankAccount(11321, 18000);
  BankAccount ba2=BankAccount(12003, 5000);


  print("User 1");
  print("Account number-${ba.getacnum}");
  print("Balance: ${ba.getbalance}");

  print("User 2");
  print("Account number-${ba2.getacnum}");
  print("Balance: ${ba2.getbalance}");
  
}