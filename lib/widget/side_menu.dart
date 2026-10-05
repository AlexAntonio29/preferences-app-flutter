import 'package:flutter/material.dart';
import 'package:preferences_app/screen/screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/menu-img.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.people),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, HomeScreen.routeHome);
            },
          ),

          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.people),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, Settings.routeHome);
            },
          ),
        ],
      ),
    );
  }
}
