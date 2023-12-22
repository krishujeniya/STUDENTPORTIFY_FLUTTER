// ignore_for_file: file_names, duplicate_ignore
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'T1Page.dart';
import 'T2Page.dart';
import 'T3Page.dart';
import 'T4Page.dart';
class DisplayUserData extends StatefulWidget {
  final UserData userData;

  const DisplayUserData({super.key, required this.userData});

  @override
  // ignore: library_private_types_in_public_api
  _DisplayUserDataState createState() => _DisplayUserDataState();
}
class _DisplayUserDataState extends State<DisplayUserData> {
  int _currentIndex = 0;

  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      Template1Screen(userData: widget.userData),
      Template2Screen(userData: widget.userData),
      Template3Screen(userData: widget.userData),
      Template4Screen(userData: widget.userData),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudentPortify Templates', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.orange,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: _screens[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Template 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Template 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Template 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Template 4',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orange,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

