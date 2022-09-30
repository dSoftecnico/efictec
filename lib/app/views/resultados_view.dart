import 'package:flutter/material.dart';
import 'package:efictec_srl/app/models/loterias_model.dart';
import 'package:efictec_srl/app/widgets/staggered_loterias.dart';
import 'package:efictec_srl/app/pages/resultados_loterias_page.dart';

class ResultadosLoteriasView extends StatelessWidget {
  const ResultadosLoteriasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredLoteria(
      aspectRatio: 0.7,
      spacing: 5.0,
      itemBuilder: (BuildContext context, int index) {
        return ResultadosLoteriasPage(loteriasModel: loterias[index]);
      },
      itemCount: loterias.length,
    );
  }
}
