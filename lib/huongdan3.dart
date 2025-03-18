import 'package:flutter/material.dart';

class GirdItem {
  final String title;
  final IconData icon;
  GirdItem({required this.title, required this.icon});
}

class Huongdan3 extends StatefulWidget {
  const Huongdan3({super.key});
  @override
  State<Huongdan3> createState() => _MyGirdView01State();
}

class _MyGirdView01State extends State<Huongdan3> {
  List<GirdItem> lst = [
    GirdItem(title: 'Login', icon: Icons.login),
    GirdItem(title: 'Search', icon: Icons.search),
    GirdItem(title: 'Profile', icon: Icons.person),
    GirdItem(title: 'Setting', icon: Icons.settings),
    GirdItem(title: 'Cart', icon: Icons.shopping_cart),
    GirdItem(title: 'Payment', icon: Icons.payment),
    GirdItem(title: 'Task', icon: Icons.add_task),
    GirdItem(title: 'Alert', icon: Icons.add_alert),
    GirdItem(title: 'Bank', icon: Icons.account_balance),
    GirdItem(title: 'Walet', icon: Icons.account_balance_wallet),
    GirdItem(title: 'Email', icon: Icons.mail),
    GirdItem(title: 'More', icon: Icons.arrow_circle_right_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 234, 205, 18),
        title: const Text('GridView demo 02'),
      ),
      body: GridView.builder(
        itemCount: lst.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Icon(lst[index].icon, size: 50),
                    Text(lst[index].title, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
