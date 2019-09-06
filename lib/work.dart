import 'package:flutter_web/material.dart';
import 'package:portfolio/widgets/drawer.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawwer(),
      appBar: AppBar(
        title: Text(
          'Work',
          style: TextStyle(letterSpacing: 3),
        ),
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Home",
                style: TextStyle(fontSize: 18),
              )),
            ),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
            },
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "About Me",
                style: TextStyle(fontSize: 18),
              )),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Projects",
                style: TextStyle(fontSize: 18),
              )),
            ),
            onTap: () {},
          )
        ],
      ),
      body: Container(),
    );
  }
}