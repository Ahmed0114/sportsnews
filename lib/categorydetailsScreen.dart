import 'package:flutter/material.dart';
import 'package:sportnews/Category_tabs_widget.dart';
import 'package:sportnews/catergoryGridwidget.dart';
import 'package:sportnews/data/ApiManger.dart';
import 'package:sportnews/data/source_response.dart';

class categorydetailsScreen extends StatelessWidget {
 category Categories;
 categorydetailsScreen(this.Categories);
  @override
  Widget build(BuildContext context) {
    return Container(
     child: FutureBuilder<SourceResponse>(
      future: ApiManger.loadNewsource(Categories.gategory_id!),
      builder: ( BuildContext context,AsyncSnapshot<SourceResponse>snapshot) {
       if(snapshot.hasError){
        return Center(child: Text(snapshot.error.toString()));
       }else if(snapshot.connectionState==ConnectionState.waiting)
       {
        return Center(child: CircularProgressIndicator());

      }
       return CategoryTabs(snapshot.data?.sources ??[]);
       },
     ),
    );
  }

}
