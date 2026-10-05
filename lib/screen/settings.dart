import 'package:flutter/material.dart';
import 'package:preferences_app/provider/theme_provider.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widget/widget.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  static const routeHome = 'settings';

  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // bool darkMode = false;
  // int gender = 1;
  // String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              value: Preferences.isDarkMode,
              onChanged: (value) {
                 Preferences.isDarkMode = value;
                final theme = Provider.of<ThemeProvider>(context,listen: false);

               

                (value) ? 
                theme.isDarkMode() : 
                theme.isLightmode();

                setState(() {});
              },
              title: Text("DarkMode"),
            ),
            Divider(),
            // ignore: deprecated_member_use
            RadioListTile(
              value: 1,
              groupValue: Preferences.gender,
              title: Text("Hombre"),
              onChanged: (value) {
                Preferences.gender = value ?? 1;
                setState(() {});
              },
            ),

            // ignore: deprecated_member_use
            RadioListTile(
              value: 2,
              groupValue: Preferences.gender,
              title: Text("Mujer"),
              onChanged: (value) {
                Preferences.gender = value ?? 2;
                setState(() {});
              },
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                initialValue: Preferences.name,
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                  helperText: "Nombre de usuario",
                  labelText: "Usuario",
                ),
              ),
            ),
          ],
        ),
      ),

      drawer: const SideMenu(),
    );
  }
}
