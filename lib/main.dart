import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/share_prefences/preferences.dart';
import 'package:provider/provider.dart';

import 'screens/screeens.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProviders(isDarkmode: Preferences.isDarkmode))
    ],
     child: const MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName     : (_) => const  HomeScreen(),
        SettingsScreen.routeName : (_) => const  SettingsScreen(),
      },
      theme: Provider.of<ThemeProviders>(context).currentTheme,
    );
  }
}