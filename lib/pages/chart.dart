import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/services.dart';

import 'nested_tabbar.dart';

class Chart extends StatefulWidget {
  Chart({Key? key}) : super(key: key);
  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> with TickerProviderStateMixin {
  late TabController _tabController;

  bool _fontSizeFlage = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor('#fafafa'),
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ));

    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 27,
        elevation: 1,
        backgroundColor: HexColor('#fafafa'),
        title: Align(
          alignment: Alignment.center,
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: HexColor('#54C395'),
            onTap: (index) => {
              setState(() => {_fontSizeFlage = !_fontSizeFlage})
            },
            tabs: [
              Text(
                '支出',
                style: TextStyle(
                  fontSize: 17,
                  color: HexColor('#333333'),
                ),
              ),
              Text(
                '收入',
                style: TextStyle(
                  fontSize: 17,
                  color: HexColor('#333333'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          NestedTabbar(),
          Center(
            child: Text("It's rainy here"),
          ),
        ],
      ),
    );
  }
}
