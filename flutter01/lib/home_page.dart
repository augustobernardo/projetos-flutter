import 'package:flutter/material.dart';
import 'package:flutter01/navigation_drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OpenZap',
          style: TextStyle(),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
