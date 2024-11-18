import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_ux/pages/ux_1.dart';
import 'package:project_ux/pages/ux_2.dart';
import 'package:project_ux/pages/ux_3.dart';
import 'package:project_ux/pages/ux_4.dart';

int _selectedIndex = 0;

const List _widgetoptions = [
  UxOne(),
  UxTwo(),
  UxThree(),
  UxFour(),
];
// void _showSnackBar(String text, String ans) {
//   final SnackBar snackBar = SnackBar(
//       duration: Duration(milliseconds: 500),
//       backgroundColor: ans.compareTo('Yes') == 0 ? Colors.green : Colors.red,
//       content: Row(
//         children: [
//           Icon(
//             ans.compareTo('yes') == 0 ? Icons.favorite : Icons.watch_later,
//             color: ans.compareTo('yes') == o ? Colors.pink : Colors.yellow,
//             size: 24.0,
//             semanticLabel: text,
//           ),
//           Text(text),
//         ],
//       ));
//   ScaffoldMessenger.of(context).showSnackBar(snackBar);
// }

// Future<void> _alertDialog() async {
//   switch (await showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Text('Button You clicked?'),
//           title: Text('Alert Dialog!'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context, 'yes');
//               },
//               child: Text('Yes'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context, 'yes');
//               },
//               child: Text('No'),
//             ),
//           ],
//         );
//       })) {
//     case 'yes':
//       _showSnackBar('Thanks!', 'Yes');
//       break;
//     case 'No':
//       _showSnackBar('Oh! No... Try to provide you best', 'No');
//   }
// }
var myDefaultBackground = Colors.grey[300];
var myAppBar = AppBar(
  centerTitle: true,
  title: const Text("T I T L E"),
  toolbarHeight: 60.2,
  toolbarOpacity: 0.8,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
  ),
  actions: <Widget>[
    IconButton(
        icon: const Icon(Icons.comment),
        tooltip: 'Comment Icon',
        onPressed: () {} //_alertDialog,
        ), //IconButton
    IconButton(
        icon: const Icon(Icons.settings),
        tooltip: 'Setting Icon',
        onPressed: () {}), //IconButton
  ], //<Widget>[]
  backgroundColor: Colors.blueAccent[400],
  elevation: 50.0,
  leading: IconButton(
    icon: const Icon(Icons.menu),
    tooltip: 'Menu Icon',
    onPressed: () {},
  ),
  systemOverlayStyle: SystemUiOverlayStyle.light,
);
