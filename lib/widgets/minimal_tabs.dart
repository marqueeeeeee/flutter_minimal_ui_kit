import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MinimalTabs extends StatefulWidget {
  List<String> items = [];
  final Function selectedItem;
  final double width;
  final double fontSize;

  MinimalTabs(
      {Key key,
      this.items,
      this.selectedItem,
      this.width = 180,
      this.fontSize = 15})
      : super(key: key);

  @override
  _MinimalTabsState createState() => _MinimalTabsState();
}

class _MinimalTabsState extends State<MinimalTabs> {
  @override
  Widget build(BuildContext context) {
    final itemWidgets = widget.items.map(
      (e) => Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            e,
            style: GoogleFonts.lato(fontSize: widget.fontSize),
          ),
        ),
      ),
    ).toList();

    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      height: 30,
      width: widget.width,
      child: DefaultTabController(
        length: itemWidgets.length,
        child: TabBar(
          unselectedLabelColor: Colors.grey.shade400,
          labelColor: Colors.black,
          indicator: BoxDecoration(color: Colors.white),
          tabs: itemWidgets,
        ),
      ),
    );
  }
}
