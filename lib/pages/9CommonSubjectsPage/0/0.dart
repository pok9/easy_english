import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Page_0 extends StatefulWidget {
  Page_0({Key key}) : super(key: key);

  @override
  _Page_0State createState() => _Page_0State();
}

class _Page_0State extends State<Page_0> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  double percen = 0.00;
  int percen2 = 0;

  int index = 0;
  List<String> thai = [
    "มากมาย",
    "(อยู่) ข้างบน เหนือ",
    "test3",
    "test4",
    "test5",
    "test6",
    "test7",
    "test8",
    "test9",
    "test10",
    "test11",
    "test12",
    "test13",
    "test14",
    "test15",
    "test16",
    "test17",
    "test18",
    "test19",
    "test20"
  ];
  List<String> eng = [
    "a lot",
    "above",
    "heart3",
    "heart4",
    "heart5",
    "heart6",
    "heart7",
    "heart8",
    "heart9",
    "heart10",
    "heart11",
    "heart12",
    "heart13",
    "heart14",
    "heart15",
    "heart16",
    "heart17",
    "heart18",
    "heart19",
    "heart20"
  ];

  List<String> precis = [
    "(det.),(pron)",
    "(prep.),(adv.)",
    "n3",
    "n4",
    "n5",
    "n6",
    "n7",
    "n8",
    "n9",
    "n10",
    "n11",
    "n12",
    "n13",
    "n14",
    "n15",
    "n16",
    "n17",
    "n18",
    "n19",
    "n20"
  ];

  

  final FlutterTts flutterTts = FlutterTts();

  _speak() async {
    // await flutterTts.setLanguage("language")
    print(await flutterTts.getLanguages);
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    // await flutterTts.set
    await flutterTts.speak(eng[index]);
  }

  @override
  Widget build(BuildContext context) {
    _speak();

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("1-20"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
          child: ListView(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: new LinearPercentIndicator(
                          width: 200.0,
                          lineHeight: 25.0,
                          percent: percen,
                          center: Text(
                            "$percen2.0%",
                            style: new TextStyle(
                                fontSize: 12.0, color: Colors.white),
                          ),
                          trailing: (percen2 >= 80)
                              ? Icon(Icons.mood)
                              : Icon(Icons.mood_bad),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.grey,
                          progressColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 250,
                    child: Card(
                      child: Image.asset(
                        'images/page_0/$index.png',
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    thai[index],
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    eng[index] + " "+precis[index]+"",
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 100,
                          height: 50,
                          child: (percen <= 0.00)
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('ก่อนหน้า'),
                                  onPressed: () {
                                    print("Up " + percen.toString());
                                  },
                                )
                              : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('ก่อนหน้า'),
                                  onPressed: () {
                                    index -= 1;
                                    percen -= 0.05;
                                    percen2 -= 5;
                                    if (percen < 0.05) {
                                      percen = 0.00;
                                      percen2 = 0;
                                    }
                                    print("down " + percen.toString());
                                    setState(() {});
                                  },
                                )),
                      Container(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            onPrimary: Colors.white,
                          ),
                          child: Text('ถัดไป'),
                          onPressed: () {
                            print('Pressed');
                            index += 1;
                            percen += 0.05;
                            percen2 += 5;
                            if (percen > 1.00) {
                              percen = 1.00;
                              percen2 = 100;
                              index = 19;
                            }
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
