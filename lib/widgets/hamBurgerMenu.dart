import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          SizedBox(height: 70),
          Container(
            height: 150,
            width: 100,
            child: Image.asset(
              "images/la3eeb.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 50),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About La3eeb"),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text("How To Play"),
            // onTap: () => print('How tapped'),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            leading: Icon(
              Icons.circle,
              size: 18,
            ),
            title: Text("Where's the ball"),
            onTap: () {
              Navigator.pushNamed(context, '/wheres_the_ball');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            leading: Icon(Icons.circle, size: 18),
            title: Text("Elmal3ab"),
            onTap: () {
              Navigator.pushNamed(context, '/elmal3ab');
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 50),
            leading: Icon(
              Icons.circle,
              size: 18,
            ),
            title: Text("Points Yard"),
            onTap: () {
              Navigator.pushNamed(context, '/pointyardd');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Login"),
            onTap: () => print('Login tapped'),
          ),
        ],
      ),
    );
  }
}
