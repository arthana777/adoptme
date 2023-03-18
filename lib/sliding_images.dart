import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  List imageList =[
    {"id":1,"image_path":'assets/alexander-london.jpg'},
    {"id":2,"image_path":'assets/alvan-nee.jpg'},
    {"id":3,"image_path":'assets/amber-kipp.jpg'},
  ];
  final CarouselController carouselController=CarouselController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: (){
                  print(currentIndex);
                },
                child: CarouselSlider(
                    items: imageList.map((item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    ).toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics:const BouncingScrollPhysics(),
                      autoPlay:true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index,reason){
                        setState(() {
                          currentIndex=index;
                        });
                      }

                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

