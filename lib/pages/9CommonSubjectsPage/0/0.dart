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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("1-20"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: new LinearPercentIndicator(
                    width: 140.0,
                    lineHeight: 14.0,
                    percent: 0.05,
                    center: Text(
                      "5.0%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                    trailing: Icon(Icons.mood),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                ),
              ],
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
            Text("หัวใจ"),
            Text("heart (n)"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      onPrimary: Colors.white,
                    ),
                    child: Text('ก่อนหน้า'),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                ),
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
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
