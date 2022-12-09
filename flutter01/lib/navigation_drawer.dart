import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter01/history_page.dart';
import 'package:flutter01/home_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.green.shade700,
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: const [
            CircleAvatar(
                radius: 45,
                backgroundImage:
                    AssetImage('assets/images/profile-avatar.jpg')),
            SizedBox(height: 12),
            Text(
              'Augusto Oliveira',
              style: TextStyle(fontSize: 28, color: Colors.white),
            )
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16, //vertical spacing
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Início'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Homepage(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.history_outlined),
            title: const Text('Histórico'),
            onTap: () {
              // close navigation drawer before
              Navigator.pop(context);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HistoryPage(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.history_outlined),
            title: const Text('Teste'),
            onTap: () {
              // close navigation drawer before
              /*  Navigator.pop(context);

              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HistoryPageDois(),
              )); */
            },
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.report_problem),
            title: const Text('Reportar Erro'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Configurações'),
            onTap: () {},
          ),
        ],
      ));
}
