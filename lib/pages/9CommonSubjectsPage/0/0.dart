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

  double percen = 0.05;
  int percen2 = 5;

  int index = 0;
  List<String> thai = [
    "สุขภาพ",
    "ฮอร์โมน",
    "อ่อนแรง",
    "เล็กมาก",
    "ทรมาน",
    "ขับรถ",
    "ป้องกัน",
    "แนวโน้ม",
    "ซื้อ",
    "การขายปลีก",
    "ช่างคิด",
    "การติดเชื้อ",
    "สำรวจ",
    "มือสมัครเล่น",
    "เติม",
    "สำผัส",
    "ปฎิเสธ",
    "อดทน",
    "ความสำเร็จ",
    "เต็มที่"
  ];
  List<String> eng = [
    "health",
    "hormone",
    "languish",
    "minuscule",
    "suffer",
    "propel",
    "protect",
    "trend",
    "purchase",
    "retail",
    "visionary",
    "infection",
    "explore",
    "amateur",
    "replenish",
    "touch",
    "reject",
    "tolerate",
    "accomplishment",
    "sheer"
  ];

  List<String> precis = [
    "(n.)",
    "(n.)",
    "(v.)",
    "(a.)",
    "(v.)",
    "(v.)",
    "(v.)",
    "(n.)",
    "(n./v.)",
    "(n./v./a.)",
    "(a.)",
    "(n.)",
    "(v.)",
    "(a./n.)",
    "(v.)",
    "(v.)",
    "(v.)",
    "(v.)",
    "(n.)",
    "(a.)"
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
                // mainAxisAlignment: MainAxisAlignment.center,
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
                        'images/page_0/$index.jpg',
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
