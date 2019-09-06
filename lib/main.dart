import 'package:flutter_web/material.dart';
import 'package:portfolio/aboutMe.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/work.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pratik Singhal - Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => MyHomePage(),
        '/about' : (BuildContext context) => AboutMe(),
        '/projects' : (BuildContext context) => Projects(),
        '/work' : (BuildContext context) => Work(),
      },
    );
  }
}


