import 'package:flutter/material.dart';

class baividu2 extends StatefulWidget {
  const baividu2({super.key});
  @override
  State<baividu2> createState() => _MyDialogState();
}

class _MyDialogState extends State<baividu2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        backgroundColor: const Color.fromARGB(255, 239, 168, 4),
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
              top: 5,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
              top: 5,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
              top: 5,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
              top: 5,
            ),
          ),
        ],
      ),
    );
  }
}
