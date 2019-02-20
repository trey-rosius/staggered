import 'package:flutter/material.dart';
import 'package:staggered/model/storiesmodel.dart';
class StoryItem extends StatelessWidget {
  StoryItem({this.storiesList,this.index});
  final StoriesList storiesList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Column(
            children: <Widget>[
              new Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: new Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,

                      //  border: Border.all(color: const Color(0xFFF1AF27),width: 2.0),
                        // image: new Image.asset(_image.)
                      ),
                      child:index == 0 ? CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 50.0,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,

                        ),
                      ): CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                          AssetImage(storiesList.storiesList[index].profilePic))
                    ),
                  ),

                ],
              ),
              Flexible(

                child: Container(
                  width: 90.0,
                  child: Text(
                    storiesList.storiesList[index].name,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(fontSize: 14.0,fontFamily: 'Roboto',),
                  ),
                ),
              ),
            ],
          ),

    );
  }
}
