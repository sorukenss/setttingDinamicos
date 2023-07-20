import 'package:flutter/material.dart';
import 'package:preferences_app/share_prefences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName= 'Home';
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('DarkMode: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Genero : ${Preferences.gender}'),
          const Divider(),
          Text('Name User: ${Preferences.name}'),
          const Divider(),
        ],
      )
    );
  }
}