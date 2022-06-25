import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NestedTabbar extends StatefulWidget {
  NestedTabbar({Key? key}) : super(key: key);

  @override
  State<NestedTabbar> createState() => _NestedTabbarState();
}

class _NestedTabbarState extends State<NestedTabbar>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int touchedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: TabBar(
            isScrollable: true,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.only(bottom: 2),
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
            indicator: BoxDecoration(
              color: HexColor('#54C395'),
              borderRadius: BorderRadius.circular(45),
              border: Border.all(width: 0, color: HexColor('#A1A2A9')),
            ),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.white,
            controller: _tabController,
            tabs: [
              Container(
                width: 90,
                height: 23,
                // padding: EdgeInsets.zero,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(width: 1, color: HexColor('#A1A2A9')),
                ),
                child: Text('周'),
              ),
              Container(
                width: 90,
                height: 23,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(width: 1, color: HexColor('#A1A2A9')),
                ),
                child: Text('月'),
              ),
              Container(
                width: 90,
                height: 23,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(width: 1, color: HexColor('#A1A2A9')),
                ),
                child: Text('年'),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              Column(
                children: [
                  Container(
                    height: 27,
                    alignment: Alignment.center,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                                color: HexColor('#999999'), fontSize: 11),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                                color: HexColor('#999999'), fontSize: 11),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                                color: HexColor('#999999'), fontSize: 11),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                                color: HexColor('#999999'), fontSize: 11),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                                color: HexColor('#999999'), fontSize: 11),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                                color: HexColor('#999999'), fontSize: 11),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '05.2022',
                            style: TextStyle(
                              color: HexColor('#999999'),
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '总支出：40000.00',
                                    style: TextStyle(
                                      color: HexColor('#000000'),
                                      fontSize: 11,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '平均支出(天)：3000.09',
                                    style: TextStyle(
                                      color: HexColor('#000000'),
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '总收出：40000.00',
                                    style: TextStyle(
                                      color: HexColor('#000000'),
                                      fontSize: 11,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '结余：3000.09',
                                    style: TextStyle(
                                      color: HexColor('#000000'),
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 1.3,
                          child: Card(
                            elevation: 0,
                            color: Color(0xfffafafa),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                    pieTouchData: PieTouchData(touchCallback:
                                        (FlTouchEvent event, pieTouchResponse) {
                                      setState(() {
                                        if (!event
                                                .isInterestedForInteractions ||
                                            pieTouchResponse == null ||
                                            pieTouchResponse.touchedSection ==
                                                null) {
                                          touchedIndex = -1;
                                          return;
                                        }
                                        touchedIndex = pieTouchResponse
                                            .touchedSection!
                                            .touchedSectionIndex;
                                      });
                                    }),
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 0,
                                    sections: showingSections()),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '支出排行榜',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Divider(),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: HexColor('#F3F3F3'),
                                child: Icon(Icons.home,
                                    color: HexColor('#54C395')),
                              ),
                              title: Text(
                                '早餐 80%',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                              subtitle: SizedBox(
                                height: 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: LinearProgressIndicator(
                                    backgroundColor: Color(0xffcccccc),
                                    valueColor: AlwaysStoppedAnimation(
                                      Color(0xff54C395),
                                    ),
                                    value: 0.8,
                                  ),
                                ),
                              ),
                              trailing: Text(
                                '-10￥',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: HexColor('#F3F3F3'),
                                child: Icon(Icons.home,
                                    color: HexColor('#54C395')),
                              ),
                              title: Text(
                                '早餐 80%',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                              subtitle: SizedBox(
                                height: 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: LinearProgressIndicator(
                                    backgroundColor: Color(0xffcccccc),
                                    valueColor: AlwaysStoppedAnimation(
                                      Color(0xff54C395),
                                    ),
                                    value: 0.8,
                                  ),
                                ),
                              ),
                              trailing: Text(
                                '-10￥',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: HexColor('#F3F3F3'),
                                child: Icon(Icons.home,
                                    color: HexColor('#54C395')),
                              ),
                              title: Text(
                                '早餐 80%',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                              subtitle: SizedBox(
                                height: 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: LinearProgressIndicator(
                                    backgroundColor: Color(0xffcccccc),
                                    valueColor: AlwaysStoppedAnimation(
                                      Color(0xff54C395),
                                    ),
                                    value: 0.8,
                                  ),
                                ),
                              ),
                              trailing: Text(
                                '-10￥',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: HexColor('#F3F3F3'),
                                child: Icon(Icons.home,
                                    color: HexColor('#54C395')),
                              ),
                              title: Text(
                                '早餐 80%',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                              subtitle: SizedBox(
                                height: 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: LinearProgressIndicator(
                                    backgroundColor: Color(0xffcccccc),
                                    valueColor: AlwaysStoppedAnimation(
                                      Color(0xff54C395),
                                    ),
                                    value: 0.8,
                                  ),
                                ),
                              ),
                              trailing: Text(
                                '-10￥',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: HexColor('#666666'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Text("2"),
              ),
              Center(
                child: Text("3"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      final widgetSize = isTouched ? 55.0 : 40.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              'assets/ophthalmology-svgrepo-com.svg',
              size: widgetSize,
              borderColor: const Color(0xff0293ee),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              'assets/librarian-svgrepo-com.svg',
              size: widgetSize,
              borderColor: const Color(0xfff8b250),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              'assets/fitness-svgrepo-com.svg',
              size: widgetSize,
              borderColor: const Color(0xff845bef),
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              'assets/worker-svgrepo-com.svg',
              size: widgetSize,
              borderColor: const Color(0xff13d38e),
            ),
            badgePositionPercentageOffset: .98,
          );
        default:
          throw 'Oh no';
      }
    });
  }
}

class _Badge extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color borderColor;

  const _Badge(
    this.svgAsset, {
    Key? key,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: SvgPicture.asset(
          svgAsset,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
