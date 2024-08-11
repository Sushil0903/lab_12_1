class Task{
  String title;
  bool iscomplate=false;
  Task({required this.title});


  set istask(bool isc){
    iscomplate=isc;
  }
}