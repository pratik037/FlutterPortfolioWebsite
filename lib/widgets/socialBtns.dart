import 'package:flutter_web/material.dart';
import 'dart:html' as html;

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
