import 'package:flutter/material.dart';
import 'package:flutter_miraculous_finder/commons/utils/constants.dart';
import 'package:flutter_miraculous_finder/models/sections.dart';
import 'package:flutter_miraculous_finder/commons/icons.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Icon actionIcon = GalleryAppIcons.ic_search_default;
  Widget appBarTitle = const Text(kTitleHomePage);

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
      appBar: customizeAppBar(),
      key: _scaffoldKey,
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: Container(
          color: Colors.blueAccent,
          child: ListView(
            padding: EdgeInsets.only(left: 55),
            children: _allHeadingItems(context),
          ),
        ),
      ),
    );
  }

  Iterable<Widget> _allHeadingItems(BuildContext context){
    final List<Widget> sectionItems = <Widget>[];
    for(int index = 0; index < allSections.length; index++){
      sectionItems.add(
        GestureDetector(
          onTap:() {
            _showNotImplementedMessage(context, allSections[index].title);
          },
          child: DrawerHeader(
            child: Stack(
                alignment: Alignment.centerLeft,
                overflow: Overflow.visible,
                children: [
                  Positioned(
                      top: 35.0,
                      left: -50.0,
                      child: Text(allSections[index].title, style: sectionTitleStyle))
                ]),
            margin: EdgeInsets.only(bottom: 2),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    allSections[index].leftColor,
                    allSections[index].rightColor,
                  ],
                ),
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0)
                )
            ),
          ),
        ),
      );
    }
    return sectionItems;
  }

  void _showNotImplementedMessage(BuildContext context, String title) {
    Navigator.pop(context); // Dismiss the drawer.
    _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(title)));
  }

  AppBar customizeAppBar(){
    final AppBar customAppBar = AppBar(
      title: appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: actionIcon,
          onPressed: (){
            _select();
          },
        )
      ],
    );
    return customAppBar;
  }

  void _select({icon: Icon}) {
    setState(() {
      if (this.actionIcon.icon == Icons.search){
        this.actionIcon = GalleryAppIcons.ic_close_default;
        this.appBarTitle = TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.white),
              hintText: kHintSearchh,
              hintStyle: TextStyle(color: Colors.white)
          ),
        );}
      else {
        this.actionIcon = GalleryAppIcons.ic_search_default;
        this.appBarTitle = Text(kTitleHomePage);
      }
    });
  }

}
