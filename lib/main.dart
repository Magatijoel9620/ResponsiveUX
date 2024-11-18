// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:project_ux/responsive/desktop_scaffold.dart';
import 'package:project_ux/responsive/mobile_scaffold.dart';
import 'package:project_ux/responsive/responsive_layout.dart';
import 'package:project_ux/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        desktopScaffold: const DesktopScaffold(),
        tabletScaffold: const TabletScaffold(),
      ),
    );
  }
}
