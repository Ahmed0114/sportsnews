
import 'package:flutter/material.dart';
class catergoryGridwidget extends StatelessWidget {
 category ? Category;
 int ?index;
 Function ?oncategoryclick;
 catergoryGridwidget (this.Category,this.index,this.oncategoryclick);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        oncategoryclick!(Category);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Category!.background,
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(22),
            topLeft: Radius.circular(22),
            bottomLeft:Radius.circular(index!%2==0?0:12),
            bottomRight:Radius.circular(index!%2==0?12:0)
          )
        ),
        child: Column(
          children: [
            Image.asset(Category!.imagepath!,height: 120,),
            Text(Category!.title!,style: Theme.of(context).textTheme.headline4,),

          ],
        ),
      ),
    );

  }
}
class category{
  String ?gategory_id;
  String ?title;
  String ?imagepath;

  Color ?background;

category(this.gategory_id,this.title,this.imagepath,this.background);
}
