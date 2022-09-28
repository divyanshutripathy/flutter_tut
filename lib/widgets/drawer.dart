import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageURL =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.brown,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Diablo_10"),
                  accountEmail: Text("divyanshutripathy@jklu.edu.in"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  ),
                )),
            // ignore: prefer_const_constructors
            ListTile(
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              leading: const Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              leading: const Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Contact Us",
                textScaleFactor: 1.2,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
