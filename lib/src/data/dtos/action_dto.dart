
class ActionsDto {
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

  ActionsDto({
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

  factory ActionsDto.fromMap(Map<String, dynamic> map) {
    return ActionsDto(
      id: map['id']?.toInt() ?? 0,
      cdAcaoRdz: map['cd_acao_rdz'] ?? '',
      nmEmpresa: map['nm_empresa'] ?? '',
      setorEconomico: map['setor_economico'] ?? '',
      subsetor: map['subsetor'] ?? '',
      segmento: map['segmento'] ?? '',
      segmentoB3: map['segmento_b3'] ?? '',
      nmSegmentoB3: map['nm_segmento_b3'] ?? '',
      cdAcao: map['cd_acao'] ?? '',
      txCnpj: map['tx_cnpj'] ?? '',
      vlCnpj: map['vl_cnpj'] ?? '',
      createdAt: map['created_at'] ?? '',
      updatedAt: map['updated_at'] ?? '',
    );
  }
}