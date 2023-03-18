import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Detials extends StatelessWidget {
  String avatar;
  String ShowDescription;
  String name;
  String gender;
  String age;
   Detials({Key? key,
     required  this.avatar,
   required this.ShowDescription,
   required this.name,
   required this.gender,
     required this.age,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: 'backro',
              child: InteractiveViewer(
                panEnabled: false,
                boundaryMargin: EdgeInsets.all(70),
                minScale: 0.5,
                maxScale: 4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(avatar,
                      fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.black12,
                  margin: EdgeInsets.only(left: 5,right: 5,top: 20),
                  child: SizedBox(
                    width: 350,
                    child: Text(ShowDescription,
                      style: TextStyle(
                        color: Colors.brown,
                      ),

                    overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                    ),

                  ),
                ),

              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              color: Colors.black12,
              child: Column(
                children: [
                  Text('Name:$name',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown,
                  ),),
                  Text('Gender:$gender',style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown,
                  ),),
                  Text('Age:$age',style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown,
                  ),),
                ],
              ),
            )

          ],

        ),
      ),
    );


  }
}
