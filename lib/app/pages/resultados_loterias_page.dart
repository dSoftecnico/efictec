import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:efictec_srl/app/shared/loterias_card.dart';
import 'package:efictec_srl/app/models/loterias_model.dart';

class ResultadosLoteriasPage extends StatelessWidget {
  final LoteriasModel loteriasModel;
  const ResultadosLoteriasPage({Key? key, required this.loteriasModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveGridCol(
            lg: 12,
            child: Container(
              height: 250,
              alignment: const Alignment(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LoteriasCard(
                    title: loteriasModel.loteria,
                    portada: Image.asset(
                      loteriasModel.portada,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                      width: 120.0,
                    ),
                    color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  loteriasModel.fecha,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  loteriasModel.hora,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        SizedBox(
                          width: 300.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomAvatarGlow(resultado: loteriasModel.numero1),
                              CustomAvatarGlow(resultado: loteriasModel.numero2),
                              CustomAvatarGlow(resultado: loteriasModel.numero3),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAvatarGlow extends StatelessWidget {
  final String resultado;

  const CustomAvatarGlow({Key? key, required this.resultado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle style = GoogleFonts.roboto(
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
    );

    return AvatarGlow(
      endRadius: 50.0,
      glowColor: Colors.red.shade900,
      duration: const Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: const Duration(milliseconds: 100),
      child: Container(
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text(resultado, style: style)),
      ),
    );
  }
}
