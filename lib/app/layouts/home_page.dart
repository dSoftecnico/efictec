import 'package:flutter/material.dart';
import 'package:efictec_srl/app/views/resultados_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:efictec_srl/app/shared/carousel_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const CarouselHeader(),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.95,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 10),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ),
        items: [
          const ResultadosLoteriasView(),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('Segunda Pantalla'),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Tercera Pantalla'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Cuarta Pantalla'),
            ),
          ),
        ],
      ),
    );
  }
}
