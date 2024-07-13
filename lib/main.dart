import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> students = [
    {'name': 'YUDHAABILANSYAH', 'nim': 'STI202102172'},
    {'name': 'ELI YUNIATI ', 'nim': 'STI202102177'},
    {'name': 'HERMAWAN SUTANTO', 'nim': 'STI202102182'},
    {'name': 'ADELLIA OKTAVIANI ', 'nim': 'STI202102187 '},
    {'name': 'MUNIF SAPUTRA', 'nim': 'STI202102190'},
    {'name': 'FATAH NAL HASAN ', 'nim': 'STI202102195'},
    {'name': 'AFIF GALIH', 'nim': 'STI202102196 '},
    {'name': 'TRI DEKA RAHMAWATI', 'nim': 'STI202102198 '},
    {'name': 'ALVAN SETIADI ', 'nim': 'STI202102200 '},
    {'name': 'DIPA ISMAIL ', 'nim': 'STI202102209 '},
    {'name': 'SALSABILA IKA NUR ROHMAH ', 'nim': ' STI202102210 '},
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.cyan,
    Colors.pink,
    Colors.teal,
    Colors.amber,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: colors[index % colors.length], // Warna latar belakang dari daftar warna
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(
                  students[index]['name']!,
                  style: TextStyle(color: Colors.white), // Warna teks
                ),
                subtitle: Text(
                  students[index]['nim']!,
                  style: TextStyle(color: Colors.white), // Warna teks
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
