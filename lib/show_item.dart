import 'package:flutter/material.dart';
import 'package:pbp_flutter/object_app.dart';

class ShowItemPage extends StatelessWidget {
  const ShowItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Item'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.amber,
      ),
      body: ItemSingleton().itemList.isEmpty
          ? const Center(
            child: Text('No Item'),
          )
          : ListView(
            children: ItemSingleton().itemList.map((item) => ListTile(
              leading: const Icon(Icons.list_alt_outlined),
              title: Text('Nama Item: ${item.name}'),
              subtitle: Text('Price: ${item.price}\n${item.description}'),
              
            )).toList(),
          )
    );
  }

}