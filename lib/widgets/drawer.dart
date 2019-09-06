import 'package:flutter_web/material.dart';
class Drawwer extends StatelessWidget {
  const Drawwer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  leading: Icon(Icons.home),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "About Me",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
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
    );
  }
}