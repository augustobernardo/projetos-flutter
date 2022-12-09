import 'package:flutter/material.dart';
import 'package:flutter01/navigation_drawer.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text(
          'Histórico',
          style: TextStyle(),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
    );
  }
}
