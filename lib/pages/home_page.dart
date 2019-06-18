import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('showing snackbar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text('Hue Clone'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: (){
              scaffoldkey.currentState.showSnackBar(snackBar);
              },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('< Header >'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}