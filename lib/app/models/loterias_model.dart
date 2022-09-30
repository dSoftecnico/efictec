class LoteriasModel {
  final String loteria;
  final String numero1;
  final String numero2;
  final String numero3;
  final String portada;
  final String fecha;
  final String hora;

  LoteriasModel(
    this.loteria,
    this.numero1,
    this.numero2,
    this.numero3,
    this.fecha,
    this.hora,
    this.portada,
  );
}

List<LoteriasModel> loterias = [
  LoteriasModel(
    'Loteria 12:00PM',
    '01',
    '20',
    '09',
    '23/09/2022',
    '12:00 PM',
    'lib/assets/loterias/quiniela_la_primera.png',
  ),
  LoteriasModel(
    'Loteria 12:30PM',
    '26',
    '23',
    '06',
    '23/09/2022',
    '12:30 PM',
    'lib/assets/loterias/anguila_dia.png',
  ),
  LoteriasModel(
    'Loteria 1:00PM',
    '17',
    '21',
    '06',
    '23/09/2022',
    '1:00 PM',
    'lib/assets/loterias/quiniela_la_primera.png',
  ),
  LoteriasModel(
    'Loteria Gana Mas',
    '20',
    '80',
    '13',
    '23/09/2022',
    '3:00 PM',
    'lib/assets/loterias/Loteria_nacional_gana_mas.png',
  ),
  LoteriasModel(
    'Loteria New York',
    '14',
    '32',
    '04',
    '23/09/2022',
    '12:30 PM',
    'lib/assets/loterias/new_york2.png',
  ),
];
