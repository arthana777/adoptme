

import 'package:adoptme/pets_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier <List<PetsModel>> FavoriteListNotifier =ValueNotifier([]);
class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: FavoriteListNotifier,
        builder: (BuildContext context, List<PetsModel> newValue,Widget ? child) {

          return Container(
            child: ListView.separated(
                itemBuilder: (context,index){
                  final data = newValue[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        child:SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipOval(
                            child: Image.asset(data.image,
                              fit: BoxFit.fill,),
                          ),
                        ),

                        radius:30,),
                      title: Text(data.name),
                      subtitle: Text(data.age),

                    ),
                  );
                },
              separatorBuilder: (context, index) {
                  return Divider();
            }, itemCount: newValue.length,),
          );
        }
    );
    }
  }


