
import 'package:adoptme/petslist.dart';
import 'package:flutter/cupertino.dart';



class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Expanded(
          child: SizedBox(
            height: 500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AllList
            ),
        ),
        ),
      ],
    );
  }
}
