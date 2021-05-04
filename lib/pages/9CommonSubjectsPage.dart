import 'package:flutter/material.dart';

class NineCommonSubjectsPage extends StatefulWidget {
  NineCommonSubjectsPage({Key key}) : super(key: key);

  @override
  _NineCommonSubjectsPageState createState() => _NineCommonSubjectsPageState();
}

class _NineCommonSubjectsPageState extends State<NineCommonSubjectsPage> {
  int lock = 1;
  @override
  Widget build(BuildContext context) {
    int num = 1;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('คำศัพท์ 9 วิชาสามัญ'),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          shrinkWrap: true,
          children: List.generate(50, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  lock+=1;
                  setState(() {
                    
                  });
                },
                child: Container(
                  color: (index < lock-1) ? Colors.green :(index == lock-1)? Colors.blueAccent : Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        num.toString() + "-" + ((num += 20) - 1).toString(),
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
