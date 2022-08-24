import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/data/datasources/get_all_actions_datasource.dart';
import 'package:flutter_application_1/src/data/dtos/action_dto.dart';
import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';

class GetAllActionsRemoteDatasourceImp implements GetAllActionsDatasource {
  final Dio _dio;
  GetAllActionsRemoteDatasourceImp(this._dio);

  @override
  Future<List<InvestEntity>> getAllActions() async {
    List<InvestEntity> actions = [];
    try {
      final response =
          await _dio.get("https://api-cotacao-b3.labdo.it/api/empresa");
          print(response.data);

      actions = List.from(
        response.data.map((action) {
          return ActionsDto.fromMap(action);
        }),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
    return actions;
  }
}
