import 'package:flutter_web/material.dart';
import 'package:portfolio/widgets/drawer.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawwer(),
      appBar: AppBar(
        title: Text(
          'Projects',
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
                "Work",
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