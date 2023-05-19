import 'package:pbp_flutter_tutorial/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_flutter_tutorial/pages/form.dart';

class DrawerMenu extends StatelessWidget {

  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [ 
          ListTile(
            title: const Text('Menu'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),         
        ],
      ),
    );
  }
}

