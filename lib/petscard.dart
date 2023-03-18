

import 'package:adoptme/detials.dart';
import 'package:adoptme/favourite.dart';
import 'package:adoptme/functions/history_function.dart';
import 'package:adoptme/pets_model.dart';
import 'package:flutter/material.dart';

class PetsCard extends StatefulWidget {
  final String avatar;
  final String name;
  final String gender;
  final String age;
  final String description;
  String ?item;
  PetsCard(
      {super.key , required this.avatar,
      required this.name,
      required this.gender,
      required this.age,
      required this.description,
      this.item});

  @override
  State<PetsCard> createState() => _PetsCardState();
}

class _PetsCardState extends State<PetsCard> {
  TextEditingController textFieldController = TextEditingController();
  
  var _active = true;
  var Adopt='Adopt';
  var _selectedindex =true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 800,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          PetDetial(),
           petsimage(),
        ],
      ),
    );
  }


  Widget PetDetial() {
    return Positioned(
      top: 205,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.gender,
                    style: TextStyle(
                        decoration: TextDecoration.none, fontSize: 18),
                  ),
                  Text(
                    widget.age,
                    style: TextStyle(
                        decoration: TextDecoration.none, fontSize: 18),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  //Icon(Icons.favorite_border),
                  IconButton(
                      onPressed: (){
                        addFavoriteclick(widget.name, widget.avatar, widget.age, widget.gender);
                      },
                      icon: Icon(Icons.favorite_border,
                      color: _selectedindex
                          ? Colors.red
                          :Colors.grey,),

                  ),

                  ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      backgroundColor: _active ? Colors.brown : Colors.black12,
                    ),

                    onPressed: (){
                      setState(() {
                        _active = false;
                        Adopt ='Adopted';
                      });
                      adoptedclick(widget.name,widget.avatar,widget.age,
                      widget.gender);
                    },
                    child:  Text(Adopt),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget petsimage() {
    return Positioned(
        top: 5,
        right: 10,
        left: 6,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Detials(
                  avatar: widget.avatar,
                  ShowDescription: widget.description,
                  name: widget.name,
                  gender: widget.gender,
                  age: widget.age,
                ),
              ));

              // Navigator.pop(BuildContext context,
              //     MaterialPageRoute(builder: (context)  =>Detials(),));
            },
            child: Image.asset(
              widget.avatar,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
  adoptedclick( String name,String avatar,String age,String gender){

 final _data = PetsModel(name: name, gender: gender, age: age, image: avatar);
 HistoryFun().inserthi(_data);



}
  addFavoriteclick (String name,String avatar,String age,String gender){
    final data = PetsModel(name: name, gender: gender, age: age, image: avatar);
    FavoriteListNotifier.value.add(data);
    FavoriteListNotifier.notifyListeners();
  }
}


