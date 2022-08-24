
import 'package:flutter_application_1/src/data/datasources/get_all_actions_datasource.dart';
import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';
import 'package:flutter_application_1/src/domain/repositories/get_all_actions_repository.dart';

class GetAllActionsRepositoryImp implements GetAllActionsRepository {
  final GetAllActionsDatasource _datasources;
  GetAllActionsRepositoryImp(this._datasources);
  

  @override
  Future<List<InvestEntity>> getAllActions() async{
    return await _datasources.getAllActions();
  }
  
}