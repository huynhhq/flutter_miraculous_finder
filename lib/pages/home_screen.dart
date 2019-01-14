import 'package:flutter/material.dart';
import 'package:flutter_miraculous_finder/utils/constants.dart';
import 'package:flutter_miraculous_finder/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  static const TextStyle sectionTitleStyle = TextStyle(
    fontFamily: 'Raleway',
    inherit: false,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    textBaseline: TextBaseline.alphabetic,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kTitleHomePage),
      ),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: Container(
          color: Colors.blueAccent,
          child: ListView(
            padding: EdgeInsets.only(left: 55),
            children: <Widget>[
              DrawerHeader(
                child: Stack(
                    alignment: Alignment.centerLeft,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          top: 35.0,
                          left: -50.0,
                          child: Text(kMainSearch, style: sectionTitleStyle))
                    ]),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        kMediumPurple,
                        kMariner,
                      ],
                    ),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0))),
              ),
              DrawerHeader(
                child: Stack(
                    alignment: Alignment.centerLeft,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          top: 35.0,
                          left: -50.0,
                          child: Text(kSearchByImage, style: sectionTitleStyle))
                    ]),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        kMySin,
                        kTomato,
                      ],
                    ),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0))),
              ),
              DrawerHeader(
                child: Stack(
                    alignment: Alignment.centerLeft,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          top: 35.0,
                          left: -50.0,
                          child: Text(kSetting, style: sectionTitleStyle))
                    ]),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[kTomato, Colors.white],
                    ),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0))),
              ),
              DrawerHeader(
                child: Stack(
                    alignment: Alignment.centerLeft,
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          top: 35.0,
                          left: -50.0,
                          child: Text(kAbout, style: sectionTitleStyle))
                    ]),
                margin: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Colors.black54,
                        Colors.white,
                      ],
                    ),
                    image: DecorationImage(image: AssetImage(kLoopGlass,
                      package: kGalleryAssetsPackage, )),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
