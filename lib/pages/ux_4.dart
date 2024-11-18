import 'package:flutter/material.dart';

class UxFour extends StatefulWidget {
  const UxFour({super.key});

  @override
  State<UxFour> createState() => _UxFourState();
}

class _UxFourState extends State<UxFour> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Center(child: Text('ux four'))],
      ),
    );
  }
}
