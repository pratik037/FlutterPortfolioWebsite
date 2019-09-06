import 'package:flutter_web/material.dart';
import 'package:portfolio/aboutMe.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:portfolio/widgets/socialBtns.dart';

class MyHomePage extends StatefulWidget {
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
      drawer: Drawwer(),
      appBar: AppBar(
        title: Text(
          "Pratik Singhal.",
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
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
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
              SocialButtons(),
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
