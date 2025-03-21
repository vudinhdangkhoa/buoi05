import 'package:flutter/material.dart';
import 'package:buoi05/bai4/trangchinh.dart';

class Bai4trenlop extends StatelessWidget {
  const Bai4trenlop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/logo.png'),
          Text(
            'Cửa hàng điện thoại',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Text(
            '140 Lê trọng Tấn,Tân Phú,TP.Hồ Chí Minh',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Trangchinh()),
              );
            },
            child: Icon(Icons.arrow_right_alt_rounded),
          ),
        ],
      ),
    );
  }
}
