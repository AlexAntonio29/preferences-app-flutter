import 'package:flutter/material.dart';
import 'package:preferences_app/provider/theme_provider.dart';
import 'package:preferences_app/screen/screen.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/themes/global_themes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(_)=>ThemeProvider(isDarkMode: Preferences.isDarkMode) )
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      initialRoute: HomeScreen.routeHome,

      routes: {
        HomeScreen.routeHome: (context) => HomeScreen(),
        Settings.routeHome: (context) => Settings(),
      },
    );
  }
}
