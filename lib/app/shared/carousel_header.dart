import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselHeader extends StatelessWidget {
  const CarouselHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      letterSpacing: 1.3,
      fontSize: 25.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );

    return Container(
      padding: const EdgeInsets.only(top: 12.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: kToolbarHeight,
          aspectRatio: 3 / 2,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: ['BANCA MANZANERO ** PAGAMOS HOY MISMO **'].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  i,
                  style: style,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
