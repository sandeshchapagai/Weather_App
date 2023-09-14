import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vsd'),
      ),
      body: Container(
        height: 100,
        color: Colors.blueGrey,
      ),
    );
  }
}