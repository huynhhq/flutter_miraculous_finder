import 'package:flutter/material.dart';
import 'package:flutter_miraculous_finder/models/app_state.dart';
import 'presentation//splash_screen.dart';
import 'package:redux/redux.dart';
import 'package:flutter_miraculous_finder/presentation/home_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen()
};

void main() => runApp(App());

class App extends StatelessWidget {
  final store = Store<AppState>(

  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: routes,
    );
  }
}