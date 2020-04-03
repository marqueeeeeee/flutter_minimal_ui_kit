import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MinimalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showDrawerIcon;
  final String title;

  const MinimalAppBar(
      {Key key, this.showDrawerIcon = true, this.title = "UNIX"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.lato(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 7),
      ),
      automaticallyImplyLeading: false,
      leading: showDrawerIcon
          ? IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            )
          : IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            ),
      actions: <Widget>[
        showDrawerIcon ? IconButton(
          icon: Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          onPressed: () {},
        ) : Container()
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
