import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_ux/pages/ux_1.dart';
import 'package:project_ux/pages/ux_2.dart';
import 'package:project_ux/pages/ux_3.dart';
import 'package:project_ux/pages/ux_4.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  int _selectedIndex = 0;

  // List _widgetoptions = [
  //   UxOne(),
  //   UxTwo(),
  //   UxThree(),
  //   UxFour(),
  // ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    void showSnackBar(String text, String ans) {
      final SnackBar snackBar = SnackBar(
          duration: const Duration(milliseconds: 500),
          backgroundColor:
              ans.compareTo('Yes') == 0 ? Colors.green : Colors.red,
          content: Row(
            children: [
              Icon(
                ans.compareTo('yes') == 0 ? Icons.favorite : Icons.watch_later,
                color: ans.compareTo('yes') == 0 ? Colors.pink : Colors.yellow,
                size: 24.0,
                semanticLabel: text,
              ),
              Text(text),
            ],
          ));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    Future<void> alertDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: const Text('Button You clicked?'),
              title: const Text('Alert Dialog!'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'yes');
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'yes');
                  },
                  child: const Text('No'),
                ),
              ],
            );
          })) {
        case 'yes':
          showSnackBar('Thanks!', 'Yes');
          break;
        case 'No':
          showSnackBar('Oh! No... Try to provide you best', 'No');
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("T I T L E"),
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: alertDialog,
          ), //IconButton
          IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: alertDialog), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.blueAccent[400],
        elevation: 50.0,
        // leading: IconButton(
        //     icon: const Icon(Icons.menu),
        //     tooltip: 'Menu Icon',
        //     onPressed: _alertDialog),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      //drawer
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Icon(Icons.favorite)),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('D A S H B O A R D'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UxOne()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.chat),
              title: const Text('B U S I N E S S'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UxTwo()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('S C H O O L'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UxThree()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('L O G O U T'),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UxFour()));
              },
            ),
          ],
        ),
      ),
      //bottomNav Not Applicable
    );
  }
}
