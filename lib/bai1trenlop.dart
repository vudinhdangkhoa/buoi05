import 'dart:ui';

import 'package:flutter/material.dart';

class NganhHoc {
  String _tenNganh;
  String _moTa;
  NganhHoc({required String tenNganh, required String moTa})
    : _tenNganh = tenNganh,
      _moTa = moTa;

  String get tenNganh => _tenNganh;
  String get moTa => _moTa;
}

class Mon extends StatefulWidget {
  const Mon({super.key});

  @override
  State<Mon> createState() => _MonState();
}

class _MonState extends State<Mon> {
  static List<String> lstMon = ['Đồ án', 'KLKS', 'Luận Văn', 'Khác'];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: lstMon.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Card(
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),

            child: Center(
              child: Text(
                lstMon[index],
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Nganh extends StatelessWidget {
  final NganhHoc nganhHoc;
  const Nganh({Key? key, required this.nganhHoc}) : super(key: key);

  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color.fromARGB(255, 196, 185, 113),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: const Icon(Icons.home),
        title: Text(nganhHoc._tenNganh, style: _textStyle),
        subtitle: Text(
          nganhHoc._moTa,
          style: TextStyle(fontSize: 18, color: Colors.blue),
          maxLines: 2,
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Thông báo'),
                content: Text('Bạn chọn ${nganhHoc._tenNganh}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class DSNganh extends StatefulWidget {
  const DSNganh({Key? key}) : super(key: key);

  @override
  _DSNganhState createState() => _DSNganhState();
}

class _DSNganhState extends State<DSNganh> {
  static List<NganhHoc> lstNganh = [
    NganhHoc(
      tenNganh: 'Công Nghệ Phần Mềm',
      moTa: 'Phát triển các ứng dụng giải quyết vác vấn đề thực tế',
    ),
    NganhHoc(
      tenNganh: 'Hệ Thống Thông Tin',
      moTa: 'Xây dựng hệ thống thông tin trong các tổ chức',
    ),
    NganhHoc(
      tenNganh: 'Mạng máy tính',
      moTa: 'xử lý các vấn đề liên quna đen mạng máy tính',
    ),
    NganhHoc(
      tenNganh: 'An toàn thông tin',
      moTa: 'Thiết kế và đảm bảo an toàn cho hệ thống máy tính',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lstNganh.length,
      itemBuilder: (context, index) {
        return Nganh(nganhHoc: lstNganh[index]);
      },
    );
  }
}

class Bai1trenlop extends StatefulWidget {
  const Bai1trenlop({Key? key}) : super(key: key);

  @override
  _Bai1trenlopState createState() => _Bai1trenlopState();
}

class _Bai1trenlopState extends State<Bai1trenlop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 234, 205, 18),
        title: const Text('listView demo'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Chọn loại đề tài',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            height: 130,

            decoration: BoxDecoration(color: Colors.white),
            child: Mon(),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  'Chọn chuyên ngành thực hiện',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: DSNganh()),
        ],
      ),
    );
  }
}
