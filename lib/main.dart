import 'package:draw/Draw.dart';
import 'package:draw/Drowing_Board.dart';
import 'package:draw/Drowing_Board2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DrowingBoard()
    );
  }
}