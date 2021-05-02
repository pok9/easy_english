import 'package:flutter/material.dart';

class NineCommonSubjectsPage extends StatefulWidget {
  NineCommonSubjectsPage({Key key}) : super(key: key);

  @override
  _NineCommonSubjectsPageState createState() => _NineCommonSubjectsPageState();
}

class _NineCommonSubjectsPageState extends State<NineCommonSubjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คำศัพท์ 9 วิชาสามัญ'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(50, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/564x/2f/64/d6/2f64d64d7b4823b76f735b1e9834a28c.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
            );
          })),
    );
  }
}
