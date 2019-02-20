import 'package:flutter/material.dart';
import 'package:staggered/model/storiesmodel.dart';
import 'package:staggered/staggered_item.dart';
import 'package:staggered/story_item.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('EXPLORE'),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.search)
        ],
      ),
      drawer: Drawer(
        child: Container(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 120.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return StoryItem(index:index, storiesList:storiesList);
                  }),
            ),
          ),

          SliverStaggeredGrid.countBuilder(
            crossAxisCount: 4,
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) =>StaggeredItem(storiesList: storiesList,index: index,),
            staggeredTileBuilder: (int index) =>
            StaggeredTile.fit(2),

            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          )
        ],
      )
    );
  }
}
