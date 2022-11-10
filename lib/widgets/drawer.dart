import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
      const imgUrl =
        "https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=740&t=st=1668061537~exp=1668062137~hmac=8dd3145b2c2689655fc2405685fee99881a306ef7eec3d821e73af1b1524d6c3";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Mukarrom"), 
                accountEmail: Text("mukarrom@mail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                    ),
                  )
                ),
                ListTile(
                  leading:Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                    color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading:Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                    color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading:Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Email me",
                    textScaleFactor: 1.2,
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