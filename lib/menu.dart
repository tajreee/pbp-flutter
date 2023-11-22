// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
// import 'package:pbp_flutter/container_test.dart';
import 'package:pbp_flutter/item_form.dart';
import 'package:pbp_flutter/login_page.dart';
import 'package:pbp_flutter/show_item.dart';
import 'package:pbp_flutter/drawer_app.dart';
import 'package:provider/provider.dart';
 
 class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, const Color.fromARGB(255, 98, 7, 1), 1),
    ShopItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(255, 183, 23, 11), 2),
    ShopItem("Logout", Icons.logout, const Color.fromARGB(255, 238, 145, 138), 3),
  ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
        ),
        backgroundColor: const Color.fromARGB(255, 164, 19, 9),
      ),
      drawer: const DrawerApp(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'PBP Shop', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
    }
  }

  class ShopItem {
    final String name;
    final IconData icon;
    final Color color;
    final int id;

    ShopItem(this.name, this.icon, this.color, this.id);
  }

  class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          
          if (item.name == "Lihat Item") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemPage()));
          }

          if (item.name == "Tambah Item") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddItemForm()));
          }

          if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
          }    
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}