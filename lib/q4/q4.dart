import 'package:flutter/material.dart';
import 'package:lab_12_1/q4/class.dart';

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  TextEditingController nameController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  TextEditingController idController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: idController,
            decoration: InputDecoration(labelText: "Id"),
          ),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Product Name"),
          ),
          TextFormField(
            controller: priceController,
            decoration: InputDecoration(labelText: "Price"),
          ),
          ElevatedButton(
            onPressed: () {
              products.add(
                  Product(int.parse(idController.text),  nameController.text, double.parse(priceController.text)));
              idController.clear();
              nameController.clear();
              priceController.clear();
              setState(() {

              });


            },
            child: Text("ADD"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
              return ListTile(
                trailing: InkWell(
                    onTap: () {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text("Edit"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                controller: idController,
                                decoration: InputDecoration(labelText: "Id"),
                              ),
                              TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(labelText: "Product Name"),
                              ),
                              TextFormField(
                                controller: priceController,
                                decoration: InputDecoration(labelText: "Price"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  products[index].id=int.parse(idController.text);
                                products[index].name=nameController.text;
                                products[index].price=double.parse(priceController.text);
                                setState(() {

                                });

                                  Navigator.pop(context);
                                },
                                child: Text("Edit"),
                              ),

                            ],
                          ),
                        );
                      },);
                    },
                    child: Icon(Icons.edit)),
                leading: Text("${products[index].id}"),
                title: Text("${products[index].name}"),
                subtitle: Text("${products[index].price}"),
              );
            },),
          )
        ],
      ),
    );
  }
}


List<Product> products=[];
