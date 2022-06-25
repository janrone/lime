import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class Dtail extends StatelessWidget {
  const Dtail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor('#fafafa'),
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ));
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: HexColor('#54C395'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: HexColor('#ffffff'),
                            ),
                            Text(
                              '日常账本',
                              style: TextStyle(
                                fontSize: 25,
                                color: HexColor('#ffffff'),
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: HexColor('#ffffff'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        margin: EdgeInsets.only(
                            left: 16, right: 16, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2022年',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: HexColor('#ffffff'),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      '06月',
                                      style: TextStyle(
                                        fontSize: 21,
                                        color: HexColor('#ffffff'),
                                      ),
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      color: HexColor('#ffffff'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 1.5,
                              height: 20,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: HexColor('#ffffff'),
                                  borderRadius: BorderRadius.circular(0.75),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '支出',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: HexColor('#ffffff'),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '1314.52',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: HexColor('#ffffff'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '收入',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: HexColor('#ffffff'),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '预算余额',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: HexColor('#ffffff'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 5),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '25000.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor('#ffffff'),
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      '5000.00',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: HexColor('#ffffff'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '今天',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: HexColor('#666666'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '06月15日 星期三',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '收入：12.12',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '支出：782.30',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 1, color: HexColor('#cccccc')),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: HexColor('#F3F3F3'),
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '今天',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: HexColor('#666666'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '06月15日 星期三',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '收入：12.12',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '支出：782.30',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 1, color: HexColor('#cccccc')),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: HexColor('#F3F3F3'),
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '今天',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: HexColor('#666666'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '06月15日 星期三',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '收入：12.12',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '支出：782.30',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#999999'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 1, color: HexColor('#cccccc')),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: HexColor('#F3F3F3'),
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
                        child: Icon(Icons.home, color: HexColor('#54C395')),
                      ),
                      title: Text(
                        '早餐',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#666666'),
                        ),
                      ),
                      subtitle: Text(
                        '[包子、豆浆、油条] [图片]',
                        style: TextStyle(
                          fontSize: 11,
                          color: HexColor('#999999'),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
