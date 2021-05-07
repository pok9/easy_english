import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
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
                      child: Image.network(
                        'https://static.thairath.co.th/media/Dtbezn3nNUxytg04OWCIxY6FUEAjCYwzeb30m2znTiOt7R.jpg',
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
                    "หัวใจ",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "heart (n)",
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
                          child: (percen <= 0.05)
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
                                    percen -= 0.05;
                                    percen2 -= 5;
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
                            percen += 0.05;
                            percen2 += 5;
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
