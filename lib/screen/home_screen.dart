import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeHome = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("IsDarkMode: ${Preferences.isDarkMode}"),
          const Divider(),
          Text("Genero: ${Preferences.gender}"),
          const Divider(),
          Text("Nombre de usuario: ${Preferences.name}"),
        ],
      ),
      drawer: SideMenu(),
    );
  }
}
