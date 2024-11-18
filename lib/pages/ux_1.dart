import 'package:flutter/material.dart';

class UxOne extends StatefulWidget {
  const UxOne({super.key});

  @override
  State<UxOne> createState() => _UxOneState();
}

class _UxOneState extends State<UxOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Center(child: Text('ux one'))],
      ),
    );
  }
}
