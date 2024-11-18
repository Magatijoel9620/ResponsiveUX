import 'package:flutter/material.dart';

class UxThree extends StatefulWidget {
  const UxThree({super.key});

  @override
  State<UxThree> createState() => _UxThreeState();
}

class _UxThreeState extends State<UxThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Center(child: Text('ux three'))],
      ),
    );
  }
}
