class InvestEntity {
  final int id;
  final String cd_acao_rdz;
  final String nm_empresa;
  final String setor_economico;
  final String subsetor;
  final String segmento;
  final String segmento_b3;
  final String nm_segmento_b3;
  final String cd_acao;
  final String tx_cnpj;
  final String vl_cnpj;
  final String created_at;
  final String updated_at;
  
  InvestEntity({
    required this.id,
    required this.cd_acao_rdz,
    required this.nm_empresa,
    required this.setor_economico,
    required this.subsetor,
    required this.segmento,
    required this.segmento_b3,
    required this.nm_segmento_b3,
    required this.cd_acao,
    required this.tx_cnpj,
    required this.vl_cnpj,
    required this.created_at,
    required this.updated_at,
  });
}
