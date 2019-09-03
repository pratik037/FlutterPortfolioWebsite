import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 3, milliseconds: 5),
      vsync: this,
    );
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                "singhalpratik037@gmail.com",
                style: TextStyle(fontSize: 17),
              ),
              accountName: Text(
                "Pratik Singhal",
                style: TextStyle(fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/img.jpg'),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      "About Me",
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.receipt),
                    title: Text(
                      "Projects",
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text(
                      "Work",
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(letterSpacing: 3),
        ),
        actions: <Widget>[
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                  child: Text(
                    "Pratik Singhal",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 55, letterSpacing: 5),
                  ),
                  
                
              ),
              Container(
                color: Colors.grey,
                height: 2,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                child: FadeTransition(
                  child: Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  opacity: animationController
                      .drive(CurveTween(curve: Curves.easeOut)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\nA budding software developer with passion for learning and a knack for developing.",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\nLets Connect? Contact me on anyone of the below social platform\n\n",
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('iconSocial/fb.png', height: 40),
                    ),
                    onTap: () {
                      html.window.open("https://www.facebook.com/pratik037", "Facebook");
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('iconSocial/linkedIn.png', height: 40),
                    ),
                    onTap: () {
                      html.window.open("https://www.linkedin.com/in/pratik037", "Linked In");

                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('iconSocial/twitter.png', height: 40),
                    ),
                    onTap: () {
                      html.window.open("https://www.twitter.com/pratik_037", "Twitter");

                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('iconSocial/google.png', height: 40),
                    ),
                    onTap: () {
                      html.window.open("mailto:singhalpratik037@gmail.com", "Gmail");

                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('iconSocial/github.png', height: 40),
                    ),
                    onTap: () {
                      html.window.open("https://www.github.com/pratik037", "Github");

                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('iconSocial/ig.png', height: 40),
                    ),
                    onTap: () {
                      html.window.open("https://www.instagram.com/pratik037", "Instagram");
                    },
                  ),
                ],
              ),
              FadeTransition(
                child: Container(
                    // height: 700,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Image.asset(
                      'images/image.jpg',
                      fit: BoxFit.contain,
                    )),
                opacity: animationController
                    .drive(CurveTween(curve: Curves.easeOut)),
              ),
              FadeTransition(
                child: Text(
                  "WITH ❤ FROM FLUTTER WEB",
                  style: TextStyle(letterSpacing: 3),
                ),
                opacity: animationController
                    .drive(CurveTween(curve: Curves.easeOut)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
