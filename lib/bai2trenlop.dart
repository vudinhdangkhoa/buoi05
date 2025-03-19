import 'package:flutter/material.dart';

class Bai2trenlop extends StatelessWidget {
  const Bai2trenlop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Ưu đãi'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Môn học'),

          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Môn học'),
        ],
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.pinkAccent),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
