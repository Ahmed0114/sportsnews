import 'package:flutter/material.dart';
import 'package:sportnews/data/source_response.dart';

class tabitem extends StatelessWidget {
late Source source;
late bool isselected;
tabitem(this.source,this.isselected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color:isselected?Theme.of(context).primaryColor:Colors.transparent,
        border: Border.all(color:Theme.of(context).primaryColor ,width: 1)
      ),
      child: Text(source.name??'',style:TextStyle(color: isselected?Colors.white:Theme.of(context).primaryColor),),
    );
  }
}
