import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://avatars.githubusercontent.com/u/55448981?s=400&u=c5c4f8d75ae7e799b422694bab92181688f8f8d6&v=4";
    final imageUrl2 =
        "https://media-exp1.licdn.com/dms/image/C5603AQF_aFgyyLQhxA/profile-displayphoto-shrink_400_400/0/1632599432216?e=1649289600&v=beta&t=uaWkFwmCKcK2In6L9Lhj_mMyMNiIE0n9ETe4fArtV0I";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Harsh Kashyap"),
                // ignore: prefer_const_constructors
                accountEmail: Text("harsh.kashyap@licious.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl2),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
