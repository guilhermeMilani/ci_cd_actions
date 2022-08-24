import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';

class ActionsDto extends InvestEntity {
  ActionsDto({
    required int id,
    required String cdAcaoRdz,
    required String nmEmpresa,
    required String setorEconomico,
    required String subsetor,
    required String segmento,
    required String segmentoB3,
    required String nmSegmentoB3,
    required String cdAcao,
    required String txCnpj,
    required String vlCnpj,
    required String createdAt,
    required String updatedAt,
  }) : super(
          id: id,
          cdAcaoRdz: cdAcaoRdz,
          nmEmpresa: nmEmpresa,
          setorEconomico: setorEconomico,
          subsetor: subsetor,
          segmento: segmento,
          segmentoB3: segmentoB3,
          nmSegmentoB3: nmSegmentoB3,
          cdAcao: cdAcao,
          txCnpj: txCnpj,
          createdAt: createdAt,
          updatedAt: updatedAt,
          vlCnpj: vlCnpj,
        );

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
