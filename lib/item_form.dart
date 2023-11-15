import 'package:flutter/material.dart';
import 'package:pbp_flutter/menu.dart';
import 'package:pbp_flutter/object_app.dart';

class AddItemForm extends StatefulWidget {
  const AddItemForm({super.key});



  @override
  State<AddItemForm> createState() => AddItemFormState();

}

class AddItemFormState extends State<AddItemForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Add Item'
          ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.amber,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Nama Item',
                    focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color:  Color.fromARGB(255, 223, 47, 47),
                        width: 2.0,
                      ),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Harga',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 47, 47),
                        width: 2.0,
                      )
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Harga tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Harga harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Deskripsi',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 223, 47, 47),
                        width: 2.0,
                      ),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 223, 47, 47),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ItemSingleton().itemList.add(Item(name: _name, price: _price, description: _description));
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return AlertDialog(
                              title: const Center(
                                child: Text('Success!'),
                              ),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama Item : $_name'),
                                    Text('Harga     : $_price'),
                                    Text('Deskripsi :\n$_description')
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text("OK"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                                  },
                                )
                              ],
                            );
                          }
                        );
                      _formKey.currentState!.reset();
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}