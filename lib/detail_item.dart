import 'package:flutter/material.dart';



class DetailItem extends StatelessWidget {
  final String name;
  final String grade;
  final String category;
  final int amount;
  final String description;
  const DetailItem(this.name, this.grade, this.category, this.amount, this.description, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Item"),
      ),
      body: Center(
            child: Container(
              margin: const EdgeInsets.all(30),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 67, 5, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 300,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: const TextStyle(color: Colors.white),),
                  Text(grade, style: const TextStyle(color: Colors.white)),
                  Text(category, style: const TextStyle(color: Colors.white)),
                  Text("x$amount\n", style: const TextStyle(color: Colors.white)),
                  const Text("Description:", style: TextStyle(color: Colors.white)),
                  Text(description, style: const TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ],
              ),
            ),
        ),
    );
  }
}