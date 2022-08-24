class InvestEntity {
  final int id;
  final String cdAcaoRdz;
  final String nmEmpresa;
  final String setorEconomico;
  final String subsetor;
  final String segmento;
  final String segmentoB3;
  final String nmSegmentoB3;
  final String cdAcao;
  final String txCnpj;
  final String vlCnpj;
  final String createdAt;
  final String updatedAt;
  
  InvestEntity({
    required this.id,
    required this.cdAcaoRdz,
    required this.nmEmpresa,
    required this.setorEconomico,
    required this.subsetor,
    required this.segmento,
    required this.segmentoB3,
    required this.nmSegmentoB3,
    required this.cdAcao,
    required this.txCnpj,
    required this.vlCnpj,
    required this.createdAt,
    required this.updatedAt,
  });
}
