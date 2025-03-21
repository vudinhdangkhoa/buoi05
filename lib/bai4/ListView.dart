import 'package:flutter/material.dart';

class DienThoai {
  String ten;
  String hinh;
  int gia;
  String mota;
  DienThoai({
    required this.ten,
    required this.hinh,
    required this.gia,
    required this.mota,
  });
}

class GioHang {
  static List<DienThoai> lstGioHang = [];
}

class GiaoDienLstView extends StatelessWidget {
  DienThoai dienThoai;
  GiaoDienLstView({Key? key, required this.dienThoai}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 270,

      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),

              width: 200,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(dienThoai.hinh),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              dienThoai.ten,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(dienThoai.mota, style: TextStyle(fontSize: 15)),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 70,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Text(
                    '${dienThoai.gia.toString()}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Xác nhận'),
                                content: Text(
                                  'Bạn vừa thêm sản phẩm vòa giỏ hàng',
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('không'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      GioHang.lstGioHang.add(dienThoai);
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LstDienThoai extends StatefulWidget {
  const LstDienThoai({Key? key}) : super(key: key);

  @override
  _LstDienThoaiState createState() => _LstDienThoaiState();
}

class _LstDienThoaiState extends State<LstDienThoai> {
  static List<DienThoai> lstDienThoai = [
    DienThoai(
      ten: 'Iphone 12',
      hinh: 'assets/images/dienthoai.jpg',
      gia: 1000,
      mota: 'Điện thoại Iphone 12',
    ),
    DienThoai(
      ten: 'Iphone 13',
      hinh: 'assets/images/dienthoai.jpg',
      gia: 2000,
      mota: 'Điện thoại Iphone 13',
    ),
    DienThoai(
      ten: 'Iphone 14',
      hinh: 'assets/images/dienthoai.jpg',
      gia: 3000,
      mota: 'Điện thoại Iphone 14',
    ),
    DienThoai(
      ten: 'Iphone 15',
      hinh: 'assets/images/dienthoai.jpg',
      gia: 4000,
      mota: 'Điện thoại Iphone 15',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lstDienThoai.length,
        itemBuilder: (context, index) {
          return GiaoDienLstView(dienThoai: lstDienThoai[index]);
        },
      ),
    );
  }
}
