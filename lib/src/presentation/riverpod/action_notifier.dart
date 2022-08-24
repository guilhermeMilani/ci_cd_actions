
import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';
import 'package:flutter_application_1/src/domain/usecases/get_all_actions_usecases.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ActionNotifier extends  StateNotifier<List<InvestEntity>>{
  final GetAllActionsUsecases _usecase;

  ActionNotifier(this._usecase) : super([]){    
    getAllActions();
  }

  Future<void>getAllActions() async{
    state = await _usecase.getAllActions();
  }
  
}