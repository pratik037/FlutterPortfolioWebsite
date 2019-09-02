import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Pratik Singhal.'),
    );
  }
}

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
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "About Me",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Projects",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Work",
                style: TextStyle(fontSize: 20),
              )),
            ),
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
              FadeTransition(
                child: Container(
                  height: 700,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Image.asset('images/image.jpg', fit: BoxFit.contain,)
                ),
                opacity: animationController
                    .drive(CurveTween(curve: Curves.easeOut)),
              ),

              Text("Made with Love using Flutter")
            ],
          ),
        ),
      ),
    );
  }
}
