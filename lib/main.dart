import 'package:flutter/material.dart';
import 'package:hellostate/halaman_dua.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Halaman Login";
  var body = "Ini adalah teks body!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Adinda Panca Mochamad'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text("Peminjaman"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const MyApp1(parameter: "A", parameter2: "B"),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.keyboard_backspace_rounded),
              title: Text("Pengembalian"),
            )
          ]),
        ),
        appBar: AppBar(title: Center(child: Text(judul))),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            judul = "Ini judul yang berubah!";
            body = "Ini adalah teks body yang berubah";
          });
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>
                  const MyApp1(parameter: "A", parameter2: "B"),
            ),
          );
        }),
        body: Text(body));
  }
}
