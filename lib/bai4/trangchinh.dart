import 'package:flutter/material.dart';
import 'package:buoi05/bai4/ListView.dart';
import 'package:buoi05/bai4/GioHang.dart';

class Trangchinh extends StatelessWidget {
  const Trangchinh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Cửa hàng điện thoại'),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrangGioHang()),
              );
            },
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.work_rounded),
              title: Text('Cửa hàng'),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trangchinh()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Giỏ hàng'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrangGioHang()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Thoát'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trangchinh()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                'Chọn sản phẩm bạn muốn sử dụng',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(color: Colors.grey, child: LstDienThoai(), height: 500),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey),
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Sản phẩm được lựa chọn nhiều nhất',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
