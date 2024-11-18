import 'package:flutter/material.dart';

class UxTwo extends StatefulWidget {
  const UxTwo({super.key});

  @override
  State<UxTwo> createState() => _UxTwoState();
}

class _UxTwoState extends State<UxTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Center(child: Text('ux two'))
      ],),
    );
  }
}