import 'package:adoptme/History.dart';
import 'package:adoptme/favourite.dart';
import 'package:adoptme/pets_model.dart';
import 'package:adoptme/sliding_images.dart';
import 'package:flutter/material.dart';


import 'categories.dart';

class HomePage extends StatefulWidget {
  //final _controller=TextEditingController();
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void SearchList(String name,String gender,String age,String avatar){
    final value=PetsModel(name: name, gender: gender, age: age, image: avatar);
    FavoriteListNotifier.value.add(value);
    FavoriteListNotifier.notifyListeners();

  }

  void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'AdoptMe',
                        style: TextStyle(
                            fontSize: 32, fontFamily: AutofillHints.addressState),
                      ),
                      IconButton(
                          onPressed: (){
                            //Navigator.push(
                             // context, MaterialPageRoute(builder: (context)=>SearchScreen()),);
                          },
                          icon: Icon(Icons.search)),
                    ],
                  ),
                ),
                SizedBox(height: 20),



                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 10,top:10,bottom: 5),
                      child: Text('Top offers',
                        style: TextStyle(fontSize: 20,
                            fontStyle:FontStyle.italic,
                            color: Colors.brown),),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SafeArea(
                    //top: true,
                    child: SliderImage()),
                //SizedBox(
                 // child:
                Category(),//height: 370,),
              ]),
            ),
          ),
        ),
      ),
      //PAGE 2
      SafeArea(
        top: true,
        child: Column(
          children: [
            Text(
              "data",
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(width: 400, height: 633, child: History()),
          ],
        ),
      ),
      //PAGE 3
      SafeArea(
        child: Center(
            child: Column(
              children: [
                Text(
                  'Favourites',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(width: 400, height: 633, child: Favourite()),
              ],
            )),
      ),
      //PAGE 4
      Center(
        child: Text("three"),
      ),
    ];

    return Scaffold(
      body: _pages.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: "",
            icon: Icon(Icons.home_outlined),
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: "",
            icon: Icon(Icons.history_edu_outlined),
            tooltip: 'History',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: "",
            icon: Icon(Icons.favorite_border),
            tooltip: 'liked',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: "",
            icon: Icon(Icons.person_outline),
            tooltip: 'profile',
          ),
        ],
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
