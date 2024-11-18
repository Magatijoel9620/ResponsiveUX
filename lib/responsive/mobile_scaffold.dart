import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_ux/pages/ux_1.dart';
import 'package:project_ux/pages/ux_2.dart';
import 'package:project_ux/pages/ux_3.dart';
import 'package:project_ux/pages/ux_4.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  int _selectedIndex = 0;

  final List _widgetOptions = [
    const UxOne(),
    const Ux2021
    Two(),
    const UxThree(),
    const UxFour(),
  ];
  @override
  Widget build(BuildContext context) {
    void _showSnackBar(String text, String ans) {
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

    Future<void> _alertDialog() async {
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
          _showSnackBar('Thanks!', 'Yes');
          break;
        case 'No':
          _showSnackBar('Oh! No... Try to provide you best', 'No');
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
            onPressed: _alertDialog,
          ), //IconButton
          IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: _alertDialog), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.blueAccent[400],
        elevation: 50.0,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: _alertDialog),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      //drawer Not Applicable
      //bottomNav

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: const Color.fromARGB(
                  255, 66, 66, 66), // tab button ripple color when pressed

              hoverColor: const Color.fromARGB(
                  255, 97, 97, 97), // tab button hover color

              haptic: true, // haptic feedback

              tabBorderRadius: 15,
              tabActiveBorder: Border.all(
                  color: Colors.black, width: 1), // tab button border

              tabBorder: Border.all(
                  color: Colors.white, width: 1), // tab button border

              tabShadow: [
                BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 8)
              ], // tab button shadow

              curve: Curves.easeOutExpo, // tab animation curves

              duration:
                  const Duration(milliseconds: 900), // tab animation duration

              gap: 8, // the tab button gap between icon and text

              color: Colors.grey[800], // unselected icon color

              activeColor: Colors.purple, // selected icon and text color

              iconSize: 24, // tab button icon size

              tabBackgroundColor: Colors.purple
                  .withOpacity(0.1), // selected tab background color

              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 5), // navigation bar padding

              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.business,
                  text: 'Business',
                ),
                GButton(
                  icon: Icons.school,
                  text: 'School',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
