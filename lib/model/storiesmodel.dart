import 'dart:ui';

class Stories{
  final String name;
  final String profilePic;

  Stories({this.name, this.profilePic});



}
class PostItems{
  final String name;
  final String time;
  final String profilePic;
  final String postImage;

  PostItems({this.name, this.time, this.profilePic, this.postImage});


}


class StoriesList{

  final List<Stories>storiesList;
  final List<PostItems>postItems;

  StoriesList({this.storiesList, this.postItems});


}

final StoriesList storiesList = new StoriesList(
  storiesList: [
    Stories(
      name: "add a thought",
      profilePic: "assets/images/rosius.jpeg"

    ),
    Stories(
        name: "Rosalina Castaldi",
        profilePic: "assets/images/a.jpeg"

    ),
    Stories(
        name: "Nakisha Tiano",
        profilePic: "assets/images/b.jpeg"

    ),
    Stories(
        name: "Janey Eudy",
        profilePic: "assets/images/c.jpeg"

    ),
    Stories(
        name: "Vivien Lietz",
        profilePic: "assets/images/d1.jpeg"

    ),
    Stories(
        name: "Jeanine Chiarello",
        profilePic: "assets/images/e1.jpeg"

    ),
    Stories(
        name: "Lera Bohman",
        profilePic: "assets/images/f.jpeg"

    )
  ],
   postItems :[
     PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/a.jpeg",
       postImage: "assets/images/e.jpeg",
       time: "10:32am"

     ),
     PostItems(
         name: "Nakisha Tiano",
         profilePic: "assets/images/b.jpeg",

         postImage: "assets/images/i.jpeg",
         time: "3mins ago"

     ),
     PostItems(
         name: "Jeanine Chiarello",
         profilePic: "assets/images/e1.jpeg",
         postImage: "assets/images/j.jpeg",
         time: "02:30am"

     ),
     PostItems(
         name: "Janey Eudy",
         profilePic: "assets/images/c.jpeg",
         postImage: "assets/images/k.jpeg",
         time: "12:15pm"

     ),
     PostItems(
         name: "Vivien Lietz",
         profilePic: "assets/images/d1.jpeg",
         postImage: "assets/images/h.jpeg",
         time: "14:42pm"

     ),
     PostItems(
         name: "Rosius Ateh",
         profilePic: "assets/images/d1.jpeg",
         postImage: "assets/images/a.jpeg",
         time: "6mins"

     ), PostItems(
         name: "Rosalina Castaldi",
         profilePic: "assets/images/e1.jpeg",
         postImage: "assets/images/e.jpeg",
         time: "1hour"

     )

   ]
);

