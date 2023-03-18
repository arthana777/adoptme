import 'package:adoptme/All.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cat.dart';
import 'dog.dart';
import 'fish.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // const Category({Key? key}) : super(key: key);
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //
    // });
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 360,
          height: 370,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                bottom: TabBar( controller: _tabController,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Dog'),
                    Tab(text: 'fish'),
                    Tab(text: 'Cat'),
                  ],),
              ),
            ),
            body:  TabBarView(
                controller: _tabController,
                children: [
                  All(),
                  Dog(),
                  Fish(),
                  Cat(),
                ]),
          ),
        ),


      ],
    );
  }
}
