
import 'package:adoptme/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Stack(
            children: [
              Container(
              alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                  ColorFilter.mode(Colors.black26.withOpacity(1),
                      BlendMode.dstATop),
                image: NetworkImage("https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=362&q=80"),
               fit: BoxFit.cover),

              ),

            ),
              Container(
                height: 800,
                width: 400,
                color: Colors.black.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text('Make a new friend',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0),
                      ),
                      ElevatedButton(
                        style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white)),
                        onPressed: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                          child: Text("Get started",
                            style: TextStyle(color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          ),),

                    ],
                  ),



                ),
              ),
          ],
          ),
        ),
    );
  }
}
