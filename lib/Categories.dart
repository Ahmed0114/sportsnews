import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sportnews/catergoryGridwidget.dart';
class categories extends StatelessWidget {
  Function oncategoryclickback;
  categories(this.oncategoryclickback);

  List<category>Categories=[
  category('gategory_id', 'sports', 'assets/images/splashScreen.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'science', 'assets/images/science.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'Politics', 'assets/images/Politics.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'NewsTest', 'assets/images/NewsTest.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'health', 'assets/images/health.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'environment', 'assets/images/environment.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'bussines', 'assets/images/bussines.png', Color.fromRGBO(
      123, 7, 7, 1.0)),
  category('gategory_id', 'ball', 'assets/images/ball.png', Color.fromRGBO(
      123, 7, 7, 1.0))
];

@override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('pick your category of interest',style: Theme.of(context).textTheme.headline4!.copyWith(color:
            Colors.black)),
          ),
          Expanded(child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ), itemBuilder: (buildContext,index){
            return catergoryGridwidget(Categories[index], index,(Category){
      oncategoryclickback(Category);
            });
          },
            itemCount: Categories.length,

          ))

        ],
      ),
    );
  }
}
