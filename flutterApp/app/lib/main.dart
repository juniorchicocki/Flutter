import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numero = 0;
  int _gerarNumero() {
    Random n = Random();
    return n.nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu app"),
      ),
      body: Center(child: Text(numero.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numero = _gerarNumero();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
