
import 'package:adoptme/petscard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'asset.dart';
var cat=UniqueKey();
var dog=UniqueKey();
var fish=UniqueKey();



List<Widget>SearchList=List.from(AllList);

List<Widget> AllList=[
  PetsCard(
  name: 'alexander-london',
  gender: 'female',
  age: '1yr',
  avatar: 'alexander-london.jpg',
  description: alexanderlondes,
  item: 'cat',
    key: cat,
),

  PetsCard(
    name: 'alvan-nee',
    gender: 'male',
    age: '1yr 4m',
    avatar: 'alvan-nee.jpg',
    description: '',
    item: 'dog',
    key: dog,
  ),

  PetsCard(
    name: 'amber-kipp',
    gender: 'female',
    age: '6 m',
    avatar: 'amber-kipp.jpg',
    description: '',
    item: 'cat',
    key: cat,

  ),
  PetsCard(
    name: 'charlesdeluvio',
    gender: 'male',
    age: '2 m',
    avatar: 'charlesdeluvio.jpg',
    description: '',
    item: 'dog',
    key: dog,
  ),
  PetsCard(
    name: 'claudio-guglieri',
    gender: 'male',
    age: '2 m',
    avatar: 'claudio-guglieri-fish.jpg',
    description: '',
    item: 'fish',
    key: fish,
  ),
  PetsCard(
    name: 'david-clode',
    gender: 'male',
    age: '2 m',
    avatar: 'david-clode-fish.jpg',
    description: '',
    item: 'fish',
    key: fish,
  ),
  PetsCard(
    name: 'gaborszuts',
    gender: 'male',
    age: '2 m',
    avatar: 'gabor-szuts-fish.jpg',
    description: '',
    item: 'fish',
    key: fish,
  ),];


List <Widget> CatList=[

  PetsCard(
    name: 'amber-kipp',
    gender: 'female',
    age: '6 m',
    avatar: 'amber-kipp.jpg',
    description: '',
    item: 'cat',
    key: cat,

  ),

  PetsCard(
    name: 'alexander-london',
    gender: 'female',
    age: '1yr',
    avatar: 'alexander-london.jpg',
    description: alexanderlondes,
    item: 'cat',
    key: cat,
  ),
];

List <Widget> DogList=[

  PetsCard(
    name: 'alvan-nee',
    gender: 'male',
    age: '1yr 4m',
    avatar: 'alvan-nee.jpg',
    description: '',
    item: 'dog',
    key: dog,
  ),
  PetsCard(
    name: 'charlesdeluvio',
    gender: 'male',
    age: '2 m',
    avatar: 'charlesdeluvio.jpg',
    description: '',
    item: 'dog',
    key: dog,
  ),
];

List <Widget> FishList=[

PetsCard(
name: 'david-clode',
gender: 'male',
age: '2 m',
avatar: 'david-clode-fish.jpg',
description: '',
item: 'fish',
key: fish,
),
PetsCard(
name: 'gaborszuts',
gender: 'male',
age: '2 m',
avatar: 'gabor-szuts-fish.jpg',
description: '',
item: 'fish',
key: fish,
),

];
List <Widget> Favouritelist=[];
List<Color>clrs=[
  Color.fromARGB(255, 246, 111, 58),
  Color.fromARGB(255, 36, 131, 233),
  Color.fromARGB(255, 63, 208, 143),
];
var imageList=[
  "kabo-p6y.jpg",
  "t-r-item.jpg",
  "marliese-streefland.jpg",


];


class PetsList extends StatefulWidget {
  const PetsList({Key? key}) : super(key: key);

  @override
  State<PetsList> createState() => _PetsListState();
}

class _PetsListState extends State<PetsList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Near You',
                    style: TextStyle(
                      decoration: TextDecoration.none),),
                ],
              ),

          ],
          ),

          ),
        );

  }
}
