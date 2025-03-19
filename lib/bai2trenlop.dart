import 'package:flutter/material.dart';

class GirdItem {
  final String title;
  final IconData icon;
  final Color color;
  GirdItem({required this.color, required this.icon, required this.title});
}

class GridItemList extends StatefulWidget {
  const GridItemList({Key? key}) : super(key: key);

  @override
  _GridItemListState createState() => _GridItemListState();
}

class _GridItemListState extends State<GridItemList> {
  List<GirdItem> lst = [
    GirdItem(color: Colors.red[300]!, icon: Icons.money, title: "Chuyển tiền"),
    GirdItem(
      color: Colors.teal[300]!,
      icon: Icons.receipt,
      title: "Thanh toán\nhóa đơn",
    ),
    GirdItem(
      color: Colors.blue[300]!,
      icon: Icons.account_balance_wallet,
      title: "Nạp tiền điện thoại",
    ),
    GirdItem(
      color: Colors.orange[300]!,
      icon: Icons.battery_charging_full,
      title: "Mua mã thẻ đi động",
    ),
    GirdItem(
      color: Colors.cyan[300]!,
      icon: Icons.fastfood,
      title: "Heo Đất MoMo",
    ),
    GirdItem(
      color: Colors.green[400]!,
      icon: Icons.flight,
      title: "Du lịch cùng\nMoMo",
    ),
    GirdItem(
      color: Colors.blue[300]!,
      icon: Icons.water_drop,
      title: "Thanh toán\nnước",
    ),
    GirdItem(
      color: Colors.teal[300]!,
      icon: Icons.analytics,
      title: "Quản lý chi\ntiêu",
    ),
    GirdItem(color: Colors.pink[300]!, icon: Icons.people, title: "Quỹ nhóm"),
    GirdItem(
      color: Colors.blue[300]!,
      icon: Icons.verified,
      title: "Chứng khoán",
    ),
    GirdItem(color: Colors.red[600]!, icon: Icons.sms, title: "Vietlott SMS"),
    GirdItem(
      color: Colors.grey[400]!,
      icon: Icons.grid_view,
      title: "Xem thêm\ndịch vụ",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: lst.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: lst[index].color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(lst[index].icon, color: Colors.white, size: 24),
              ),
              const SizedBox(height: 4),
              Text(
                lst[index].title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Bai2trenlop extends StatelessWidget {
  const Bai2trenlop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 400, width: 500, child: GridItemList()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sự kiện đang diễn ra",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.yellow[100]!),
                  ),
                  child: Row(
                    children: [
                      // Left side with character
                      Container(
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://via.placeholder.com/70',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Center text
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tích Lũ Lộc cùng nhiều",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[800],
                              ),
                            ),
                            Text(
                              "Thưởng cuối cùng lớn",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[800],
                              ),
                            ),
                            const Text(
                              "Đến 50 triệu",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Play button
                      Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "CHƠI NGAY",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "MoMo đề xuất",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 12),
                // Suggestions in a horizontal ScrollView
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                      
                    ],
                  ),
                ),
              ],
            ),
          ),

          // AI gift suggestion banner
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.yellow[100]!),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.card_giftcard, color: Colors.amber[700]),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "2025 nhớ ai mà nở hoa?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Giao quà với AI, tìm quý nhân của bạn",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.pink[100]!),
                    ),
                    child: Text(
                      "Giao ngay",
                      style: TextStyle(
                        color: Colors.pink[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
