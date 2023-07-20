import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class ThemeProviders extends ChangeNotifier{

    ThemeData currentTheme;

    ThemeProviders({
      required bool isDarkmode
    }): currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();

    setLighMode(){
      currentTheme=ThemeData.light();
      notifyListeners();
    }

    setDarkMode(){
      currentTheme = ThemeData.dark();
      notifyListeners();
    }
}