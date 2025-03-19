import 'package:flutter/material.dart';

class baividu3 extends StatefulWidget {
  const baividu3({super.key});
  @override
  State<baividu3> createState() => _MyGirdView01State();
}

class _MyGirdView01State extends State<baividu3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 234, 205, 18),
        title: const Text('GridView demo 01'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 2,

        mainAxisSpacing: 2,
        children: List.generate(20, (index) {
          return Card(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('Item $index', style: TextStyle(fontSize: 20)),
              ),
            ),
          );
        }),
      ),
    );
  }
}
