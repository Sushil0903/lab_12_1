import 'car.dart';

void main(){
  Car c=Car();
  Car c1=Car();
  Car c2=Car();

  c.setter("Hyundai", "Venue", 2019);
  c.getter();
    print("\n");
   c1.setter("Swift", "Suzuki", 2021);
  c1.getter();
print("\n");
   c2.setter("Herriar", "TATA", 2024);
  c2.getter();

}