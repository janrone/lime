import 'package:flutter/material.dart';
import 'package:lime/pages/book.dart';
import 'package:lime/pages/chart.dart';
import 'package:lime/pages/dtail.dart';
import 'package:lime/pages/individual.dart';
import 'package:lime/pages/record.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List navigationBarItem = [
    const Dtail(),
    const Chart(),
    const Record(),
    const Book(),
    const Individual(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationBarItem[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '明细',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '报表',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            backgroundColor: Colors.white,
            label: '记账',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '账本',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '我的',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: () => null,
          child: Icon(Icons.add),
          splashColor: Colors.white),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
