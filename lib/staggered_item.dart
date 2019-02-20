import 'package:flutter/material.dart';
import 'package:staggered/model/storiesmodel.dart';
class StaggeredItem extends StatelessWidget {
  StaggeredItem({this.storiesList,this.index});
  final StoriesList storiesList;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                storiesList.postItems[index].postImage, fit: BoxFit.cover,),
            ),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    storiesList.postItems[index].profilePic,width: 30.0,height: 30.0, fit: BoxFit.cover,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(storiesList.postItems[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(storiesList.postItems[index].time,style: TextStyle(fontSize: 12.0),),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
