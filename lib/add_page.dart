

import 'package:adoptme/petslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              // SizedBox
              //   (height: 30,),
              for(int i=0;i<3;i++)
                SizedBox(
                  height: 120,
                  width: 200,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(right: 10),
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/5.5,
                    decoration: BoxDecoration(
                      color: clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5.0,),
                                          Text('''Make it as your  your own''',
                                            style: TextStyle(color: Colors.white,
                                            fontStyle: FontStyle.italic),),
                                          SizedBox(height: 5.0,),

                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      imageList[i],
                                      height: 80,
                                      width: 100,
                                    ),


                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );

  }
}
