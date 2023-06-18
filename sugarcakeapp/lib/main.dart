import 'package:sugarcakeapp/constants.dart';
import 'package:sugarcakeapp/profile/model/user.dart';
// ignore: unused_import
import 'package:sugarcakeapp/responsive.dart';
import 'package:sugarcakeapp/auth/login/login.dart';
import 'package:sugarcakeapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider(this._themeData);

  ThemeData getTheme() => _themeData;

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        final isDarkMode = true;
        return ThemeProvider(isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme);
      },
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    applyOverlay();

    return Builder(
      builder: (context) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.getTheme(),
          title: 'Sugar Cake',
          home: const LoginScreen(),
        );
      },
    );
  }
}
