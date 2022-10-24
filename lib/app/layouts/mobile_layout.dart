import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:efictec_srl/app/views/resultados_view.dart';
import 'package:efictec_srl/app/widgets/divisas_cambio.dart';
import 'package:efictec_srl/app/shared/carousel_header.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    Key? key,
  }) : super(key: key);

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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/loterias/sueno.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const DivisasCambio(),
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
