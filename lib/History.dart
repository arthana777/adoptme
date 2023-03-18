import 'package:adoptme/pets_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
ValueNotifier <List<PetsModel>> petsmodelNotifier = ValueNotifier([]);
class History extends StatelessWidget {
  // final String avatar;
  //  History({Key? key, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: petsmodelNotifier,
      builder: (BuildContext context,
          List<PetsModel> newvalue, Widget? child) {
          return Container(
             child: ListView.separated(
             itemBuilder: (context, index){
               final data = newvalue[index];
               return ListTile(
                 title: Text(data.name),
                 subtitle: Text(data.age),
                 leading:CircleAvatar(
               child:SizedBox(
                 width: 60,
                 height: 60,
                 child: ClipOval(
                   child:Image.asset(data.image,
                   fit: BoxFit.fill,),
                 ),
               ),
                 ),
               );
             },
             separatorBuilder: (context, index){
               return Divider();
             },
             itemCount: newvalue.length),
           );

    },

    );
  }
}
