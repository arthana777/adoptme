
import 'package:adoptme/All.dart';
import 'package:adoptme/pets_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:adoptme/petslist.dart';

ValueNotifier <List<PetsModel>> SearchListNotifier=ValueNotifier(List.from(AllList));
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black12,
           body: Padding(
             padding: const EdgeInsets.all(15.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('search for pets',
                 style: TextStyle(fontSize: 22,
                     color: Colors.white,
                     fontWeight:FontWeight.bold),),
                 SizedBox(height: 20,),
                 TextField(
                   style: TextStyle(fontSize: 22),
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                       borderSide: BorderSide.none,
                     ),
                     prefixIcon: Icon(Icons.search),
                     prefixIconColor: Colors.black12
                   ),
                 ),
                 SizedBox(height: 20,),
                 Expanded(child: ListView.builder(
                   itemCount: SearchList.length,
                     itemBuilder: (context,index)=>ListTile(
                       //title: Text(AllList),
                     )))
               ],
             ),
           ),
        ),
    );
  }
}
