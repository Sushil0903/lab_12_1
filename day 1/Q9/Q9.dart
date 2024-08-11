import 'movie.dart';

void main(){
  List movies=[
    Movie("Maharaja", "Vijay setupati", 4.5),
    Movie("Housefull", "Vijay nagar", 3.2),
    Movie("Krish 3", "Krish makdia", 4.1),
  ];

  movies.forEach((e) {
    e.getter();
  });
}