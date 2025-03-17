// import thu vien
import 'package:flutter/material.dart';

class Huongdan1 extends StatefulWidget {
  const Huongdan1({super.key});
  @override
  State<Huongdan1> createState() => _MyDialogState();
}

class _MyDialogState extends State<Huongdan1> {
  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: Text(title), content: Text(content));
      },
    );
  }

  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
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
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Công nghệ phần mềm", style: _textStyle),
            subtitle: const Text(
              "Phát triển các ứng ụng giải quyết các vấn đề thực tế",
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              _showDialog("Thông báo", "Bạn chọn CNPM");
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text("Hệ thống thông tin", style: _textStyle),
            subtitle: const Text(
              "Phát triển các kỹ thuật xử lý thông tin trong tổ chức",
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              _showDialog("Thông báo", "Bạn chọn HTTT");
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text("Mạng máy tính", style: _textStyle),
            subtitle: const Text(
              "Xử lý các vân đề liên quan đến mạng máy tính",
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              _showDialog("Thông báo", "Bạn chọn MMT");
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text("An toàn thông tin", style: _textStyle),
            subtitle: const Text(
              "Thiết kế và đảm bảo an toàn cho hệ thống máy tính",
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              _showDialog("Thông báo", "Bạn chọn BMTT");
            },
          ),
        ],
      ),
    );
  }
}

class ListItemNew extends StatelessWidget {
  final String title;
  final String content;
  final String dialogContent;
  final Function function;
  const ListItemNew({
    super.key,
    required this.title,
    required this.content,
    required this.dialogContent,
    required this.function,
  });
  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color.fromARGB(255, 200, 197, 177),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: const Icon(Icons.home),
        title: Text(title, style: _textStyle),
        subtitle: Text(content),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          function('Thông báo', 'Bạn chon $dialogContent');
        },
      ),
    );
  }
}

class ListItemNew1 extends StatelessWidget {
  final String title;
  final String content;
  final String dialogContent;
  final Function function;
  const ListItemNew1({
    super.key,
    required this.title,
    required this.content,
    required this.dialogContent,
    required this.function,
  });
  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color.fromARGB(255, 200, 197, 177),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: const Icon(Icons.home),
        title: Text(title, style: _textStyle),
        subtitle: Text(content),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          function('Thông báo', 'Bạn chon $dialogContent');
        },
      ),
    );
  }
}

class Huongdan extends StatefulWidget {
  const Huongdan({Key? key}) : super(key: key);

  @override
  _HuongdanState createState() => _HuongdanState();
}

class _HuongdanState extends State<Huongdan> {
  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: Text(title), content: Text(content));
      },
    );
  }

  static const List dsTieuDe = [
    'Công nghệ phần mềm',
    'Hệ thống thông tin',
    'Mạng máy tính',
    'An toàn thông tin',
  ];
  static const List dsNoiDung = [
    'Phát triển các ứng ụng giải quyết các vấn đề thực tế',
    'Phát triển các kỹ thuật xử lý thông tin trong tổ chức',
    'Xử lý các vân đề liên quan đến mạng máy tính',
    'Thiết kế và đảm bảo an toàn cho hệ thống máy tính',
  ];
  static const List dsNoiDungTB = ['CNPM', 'HTTT', 'MMT', 'BMTT'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        backgroundColor: const Color.fromARGB(255, 239, 168, 4),
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}),
      ),
      body: ListView.builder(
        itemCount: dsTieuDe.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItemNew1(
            title: dsTieuDe[index],
            content: dsNoiDung[index],
            dialogContent: dsNoiDungTB[index],
            function: _showDialog,
          );
        },
      ),
    );
  }
}
