import 'book.dart';

void main(){
  Book book=Book();
  book.settitle="Rich dad poor dad";
  book.setauther="Robert kiyosaki";
  book.setprice=300;

  print("Title :${book.gettitle}");
  print("Title :${book.getauther}");
  print("Title :${book.getprice}");
}