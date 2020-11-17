import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Title'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Size getDisplaySize;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    getDisplaySize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white10,
      //   elevation: 0,
      //   title: Text(
      //     widget.title,
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            _buildTitle(),
            const SizedBox(height: 50),
            _buildInfoCard(),
            _buildDivider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    var nowMonth = DateTime.now().month;
    return Card(
      color: Colors.white12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: Container(
          width: getDisplaySize.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "${nowMonth}월의 음주 달력입니다.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        child: Image.network(
                            "https://cdn3.iconfinder.com/data/icons/education-and-school-8/48/Tool-256.png")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "음주횟수",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "19회",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        child: Image.network(
                            "https://cdn3.iconfinder.com/data/icons/education-and-school-8/48/Book-256.png")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "음주량",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "평균 3잔",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        child: Image.network(
                            "https://cdn3.iconfinder.com/data/icons/education-and-school-8/48/Finance-256.png")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "소비액",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "218,000 원",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      elevation: 0,
    );
  }

  Widget _buildTitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "매일매일 기록하고 절주하는 습관을 들이세요",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      alignment: Alignment.center,
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: Colors.black54,
      height: 30,
      thickness: 1,
      indent: 30,
      endIndent: 30,
    );
  }
}
