import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';
import 'package:flutter_application_1/src/domain/repositories/get_all_actions_repository.dart';
import 'package:flutter_application_1/src/domain/usecases/get_all_actions_usecases.dart';

class GetAllActionsUsecasesImp implements GetAllActionsUsecases {
  final GetAllActionsRepository _repository;
  GetAllActionsUsecasesImp(this._repository);
  @override
  Future<List<InvestEntity>> getAllActions(int id) async {
    return await getAllActions(id);    
  }
}
