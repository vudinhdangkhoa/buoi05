import 'package:flutter/material.dart';

class bai1vidu extends StatefulWidget {
  const bai1vidu({super.key});
  @override
  State<bai1vidu> createState() => _bai1viduState();
}

class _bai1viduState extends State<bai1vidu> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Ví dụ về Alert Dialog",
            style: TextStyle(color: Colors.red),
          ),
          content: const Text("Bạn vừa bấm vào button Show dialog"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Demo"),
        backgroundColor: const Color.fromARGB(255, 239, 168, 4),
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showDialog,
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}
