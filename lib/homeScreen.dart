import 'package:flutter/material.dart';
import 'package:sportnews/Categories.dart';
import 'package:sportnews/categorydetailsScreen.dart';
import 'package:sportnews/catergoryGridwidget.dart';


class homeScreen extends StatefulWidget {
static const String routename='home';
  @override
  _homeScreenState createState() => _homeScreenState();
}
class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset('assets/images/pattern.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('MY news sport application'),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 48),
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Text('news app',textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline4,),
                ),
                InkWell(

                  onTap: (){
                    Navigator.pop(context);
                    setState(() {
                      SelectedCategory=null!;

                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.list,size: 36,),
                        Text('Categories',style:Theme.of(context).textTheme.headline3),


                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.list,size: 36,),
                      Text('Settings',style:Theme.of(context).textTheme.headline3),
                      Icon(Icons.settings),


                    ],
                  ),
                ),

              ],
            ),
          ),
          body:
              SelectedCategory==null?
              categories(oncatergoryclickback):
          categorydetailsScreen(SelectedCategory!),
        )

      ],

    );}

    category? SelectedCategory=null;

    void oncatergoryclickback(category Category){

      setState(() {
        SelectedCategory=Category;
      });

    }
}

