import 'package:flutter/material.dart';

class MinimalDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: <Widget>[
          ListTile(
            onTap: () => Navigator.of(context).pushReplacementNamed("/"),
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
