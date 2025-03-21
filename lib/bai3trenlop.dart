import 'package:flutter/material.dart';

class Uudai {
  final String title;
  final String subtitle;
  final String image;
  final String han;
  final Icon icon;
  Uudai({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.han,
    required this.icon,
  });
}

class GiaoDienUuDai extends StatelessWidget {
  Uudai uudai;
  static const TextStyle _textStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  GiaoDienUuDai({Key? key, required this.uudai});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: EdgeInsets.all(10),

      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 230, 225, 225),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(uudai.icon.icon, size: 30, color: Colors.red),
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 20),
                  child: Text(uudai.image, style: _textStyle, maxLines: 2),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        uudai.title,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${uudai.subtitle}',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${uudai.han}',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.pinkAccent,
                  ),
                  right: 10,
                  top: 10,
                ),
                Positioned(
                  child: Text(
                    'Dùng ngay',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  right: 10,
                  bottom: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LstUuDai extends StatefulWidget {
  const LstUuDai({Key? key}) : super(key: key);

  @override
  _LstUuDaiState createState() => _LstUuDaiState();
}

class _LstUuDaiState extends State<LstUuDai> {
  @override
  static List<Uudai> lst = [
    Uudai(
      title: 'CGV-',
      subtitle:
          'DDoognf giá 79K khi mua vé CGV 2D trên Momo cùng nhiều ưu đãi khác',
      image: 'CGV',
      han: 'Hết hạn 31/12/2021',
      icon: Icon(Icons.movie_creation_outlined),
    ),
    Uudai(
      title: 'Giảm 100K',
      subtitle: 'cho đơn từ 0đ',
      image: 'Mua SIm chính chủ',
      han: 'Hết hạn 31/12/2021',
      icon: Icon(Icons.sim_card),
    ),
    Uudai(
      title: 'Tặng 100K',
      subtitle: 'Khi mở thẻ VIB Online Plus 2in 1(*)',
      image: 'Ngân hàng quốc Tế VIB',
      han: 'Hết hạn 31/12/2021',
      icon: Icon(Icons.credit_card),
    ),
    Uudai(
      title: 'Hoàng 15K',
      subtitle: 'Cho hóa đơn từ 3.000.000đ',
      image: 'Thanh toán bảo hiểm',
      han: 'Hết hạn 31/12/2021',
      icon: Icon(Icons.monetization_on),
    ),
    Uudai(
      title: 'Giảm 10K',
      subtitle: 'Cho đơn từ 100K',
      image: 'Phí không dừng',
      han: 'Hết hạn 31/12/2021',
      icon: Icon(Icons.money_off),
    ),
  ];
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, index) {
          return GiaoDienUuDai(uudai: lst[index]);
        },
      ),
    );
  }
}

class Bai3trenlop extends StatelessWidget {
  const Bai3trenlop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 142, 224),
        title: const Text(
          'Quà của Vinh(7)',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.headset_mic)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100.0,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color.fromARGB(255, 219, 218, 218),
                    ),
                  ),
                  child: Icon(
                    Icons.filter_list_alt,
                    size: 20,
                    color: Color.fromARGB(255, 219, 218, 218),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100.0,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color.fromARGB(255, 219, 218, 218),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text('Sắp Xếp', style: TextStyle(fontSize: 20)),
                      Icon(Icons.sort_rounded, size: 20),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100.0,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color.fromARGB(255, 219, 218, 218),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text('Dịch vụ', style: TextStyle(fontSize: 20)),
                      Icon(Icons.arrow_drop_down, size: 20),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100.0,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color.fromARGB(255, 219, 218, 218),
                    ),
                  ),
                  child: Center(
                    child: Text('Gần tôi', style: TextStyle(fontSize: 20)),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100.0,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color.fromARGB(255, 219, 218, 218),
                    ),
                  ),
                  child: Center(
                    child: Text('Yêu Thích', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.amberAccent),
                            ),
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.copyright_outlined,
                                  size: 50,
                                  color: Colors.orangeAccent,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text: 'Đang có'),
                                      TextSpan(
                                        text: '\n1.955 Xu',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Colors.amberAccent,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent,
                              border: Border.symmetric(),
                            ),
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.fastfood_sharp,
                                  size: 50,
                                  color: Colors.amber[200],
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text: 'Bỏ túi ngay'),
                                      TextSpan(
                                        text: '\n4 Thẻ quà',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: LstUuDai()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
