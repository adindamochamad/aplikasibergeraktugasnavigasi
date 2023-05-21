import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hellostate/main.dart';

class MyApp1 extends StatelessWidget {
  final String parameter;
  final String parameter2;
  const MyApp1({super.key, required this.parameter, required this.parameter2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Halaman Kedua"),
      ),
      body: Column(
        children: [
          Text("Login Berhasil!"),
          ElevatedButton(
            child: Text("Kembali"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text("Logout"),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
