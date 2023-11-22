import 'package:flutter/material.dart';
import 'package:pbp_flutter/item.dart';
import 'package:pbp_flutter/menu.dart';
import 'package:pbp_flutter/item_form.dart';
import 'package:pbp_flutter/show_item.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(200, 223, 47, 47),
            ),
            child: Column(
              children: [
                Text("PBP Shop", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                Text("Catat Barangmu di sini!", 
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text("Halaman Utama"),
            subtitle: const Text("Tampilan Homepage", style: TextStyle(fontSize: 10)),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Item'),
            subtitle: const Text('Melihat List Barang', style: TextStyle(fontSize: 10),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const ItemPage(),
                )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title:  const Text("Tambah Item"),
            subtitle: const Text("Formulir Tambah Barang", style: TextStyle(fontSize: 10),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const AddItemForm(),
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
