import 'package:flutter/material.dart';
import 'package:sportnews/data/source_response.dart';
import 'package:sportnews/tabitem.dart';
class CategoryTabs extends StatefulWidget {
  List<Source>sources;
  CategoryTabs(this.sources);

  @override
  _CategoryTabsState createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
    int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child:DefaultTabController(
        initialIndex: 0,
        length: widget.sources.length,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.transparent,
              onTap: (index){
                selectedindex=index;
                setState(() {

                });
              },
                isScrollable: true,
                tabs:widget.sources.map((e) =>tabitem(e,selectedindex==widget.sources.indexOf(e))).toList()),

          ],
        ),
      ),
    );
  }
}
