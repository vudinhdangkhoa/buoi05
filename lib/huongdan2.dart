import 'dart:math';

import 'package:flutter/material.dart';

class DeTai {
  String _maDeTai;
  String _tenDeTai;
  String _tenGiangVien;
  String _noiDung;
  String _chuyenNganh;
  DeTai({
    required String maDeTai,
    required String tenDeTai,
    required String tenGiangVien,
    required String noiDung,
    required String chuyenNganh,
  }) : _chuyenNganh = chuyenNganh,
       _noiDung = noiDung,
       _tenDeTai = tenDeTai,
       _tenGiangVien = tenGiangVien,
       _maDeTai = maDeTai;
  String get getMaDeTai => _maDeTai;
  String get tenDeTai => _tenDeTai;
  String get tenGiangVien => _tenGiangVien;
  String get noiDung => _noiDung;
  String get chuyenNganh => _chuyenNganh;
}

class DeTaiItem extends StatelessWidget {
  final DeTai deTai;
  DeTaiItem({super.key, required this.deTai});
  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      height: 230,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color.fromARGB(255, 196, 185, 113),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(deTai.getMaDeTai, style: _textStyle),
            subtitle: Text(
              deTai.tenDeTai,
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
                    content: Text('Bạn chọn ${deTai.tenDeTai}'),
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
          const Divider(
            color: Colors.black,
            height: 5,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Chuyên ngành: ${deTai.noiDung}',
              textAlign: TextAlign.justify,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text('Giáo viên: ${deTai.tenGiangVien}', textAlign: TextAlign.end),
        ],
      ),
    );
  }
}

class Huongdan2 extends StatefulWidget {
  const Huongdan2({super.key});
  @override
  State<Huongdan2> createState() => _MyDialogState();
}

class _MyDialogState extends State<Huongdan2> {
  // void _showDialog(String title, String content) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(title: Text(title), content: Text(content));
  //     },
  //   );
  // }

  static List<DeTai> dsDeTai = [
    DeTai(
      maDeTai: "DT01",

      tenDeTai: 'Khai thác tập hữu ích cao trên CSDL giao dịch',
      tenGiangVien: 'ThS. Vũ Văn Vinh',
      noiDung:
          'Khai phá tập HUI, tìm hiểu và vận dụng các kỹ thuật tỉa hiệu quả để giảm bớt không gian tìm kiếm',
      chuyenNganh: 'CNPM',
    ),
    DeTai(
      maDeTai: "DT03",
      tenDeTai:
          'Phát hiện tấn công và ngăn ngữa phát tán mã độc trong hệ thống mạng',
      tenGiangVien: 'ThS. Vũ Văn Vinh',
      noiDung:
          'Khai phá topKHUI, kết hợp với việc tăng ngưỡng sớm để có được minUtil lớn nhất, từ đó áp dùng các chiến lược tỉa và tăng ngưỡng.',
      chuyenNganh: 'CNPM',
    ),
    DeTai(
      maDeTai: "DT02",
      tenDeTai: 'Khai tác K tập hữu ích cao nhất (topKHUI)',
      tenGiangVien: 'TS. Vũ Đức Thịnh',
      noiDung:
          'Khai phá topKHUI, kết hợp với việc tăng ngưỡng sớm để có '
          'được minUtil lớn nhất, từ đó áp dùng các chiến lược tỉa và tăng ngưỡng.',
      chuyenNganh: 'MMT',
    ),
    DeTai(
      maDeTai: "DT04",
      tenDeTai: 'Xây dựng hệ thống thông tin hỗ trợ việc giảng dạy tại HUIT',
      tenGiangVien: 'ThS. Nguyễn Văn Lễ',
      noiDung:
          'Khai phá topKHUI, kết hợp với việc tăng ngưỡng sớm để có được minUtil lớn nhất, từ đó áp dùng các chiến lược tỉa và tăng ngưỡng.',
      chuyenNganh: 'HTTT',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        backgroundColor: const Color.fromARGB(255, 239, 168, 4),
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}),
      ),
      body: ListView.builder(
        itemCount: dsDeTai.length,
        itemBuilder: (BuildContext context, int index) {
          return DeTaiItem(deTai: dsDeTai[index]);
        },
      ),
    );
  }
}
