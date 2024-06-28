import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nama Mahasiswa Bergantian'),
        ),
        body: NamaMahasiswaWidget(),
      ),
    );
  }
}

class NamaMahasiswaWidget extends StatefulWidget {
  @override
  _NamaMahasiswaWidgetState createState() => _NamaMahasiswaWidgetState();
}

class _NamaMahasiswaWidgetState extends State<NamaMahasiswaWidget> {
  final List<String> namaMahasiswa = [
    'Aditya Prima Darmawan',
    'Amanda',
    'Andi',
    'Riski',
    'Selvi'
  ];

  int _currentIndex = 0;
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple
  ];
  Color _currentColor = Colors.red;

  void _nextNama() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % namaMahasiswa.length;
      _currentColor = _colors[_currentIndex % _colors.length];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _nextNama,
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: _currentColor,
          child: Text(
            namaMahasiswa[_currentIndex],
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
