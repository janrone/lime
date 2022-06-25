import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
  int _currentIndex = 1;

  List navigationBarItem = [
    Dtail(),
    Chart(),
    Record(),
    Book(),
    Individual(),
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
        fixedColor: HexColor('#54C395'),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: '明细',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.addchart),
            label: '报表',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.white,
            label: '记账',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: '账本',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () => {Navigator.of(context).push(_createRoute())},
        child: Icon(Icons.add),
        splashColor: Colors.white,
        backgroundColor: HexColor('#54C395'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Record(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
