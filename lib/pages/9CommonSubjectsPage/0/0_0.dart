import 'package:flutter/material.dart';
import 'package:easy_english/pages/9CommonSubjectsPage/0/0.dart';

class Page_0_0 extends StatefulWidget {
  Page_0_0({Key key}) : super(key: key);

  @override
  _Page_0_0State createState() => _Page_0_0State();
}

class _Page_0_0State extends State<Page_0_0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: GestureDetector(
                onTap: () {
                  print("9 วิชาสามัญ");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Container()));
                },
                child: Card(
                    child: Container(
                        decoration: new BoxDecoration(color: Colors.blue[50]),
                        child: ListTile(title: Text('เริ่มทำการทดสอบ'))))),
          ),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: GestureDetector(
                onTap: () {
                  print("9 วิชาสามัญ");
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Page_0()));
                },
                child: Card(
                    child: Container(
                        decoration: new BoxDecoration(color: Colors.grey),
                        child: ListTile(title: Text('ดูคำศัพท์ใหม่อีกครั้ง'))))),
          ),
        ],
      ),
    );
  }
}
