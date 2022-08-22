import 'package:dio/dio.dart';
import 'package:flutter_application_1/src/data/datasources/remote/get_all_actions_remote_datasource_imp.dart';
import 'package:flutter_application_1/src/data/repository/get_all_actions_repository_imp.dart';
import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';
import 'package:flutter_application_1/src/domain/usecases/get_all_actions_usecases_imp.dart';
import 'package:flutter_application_1/src/presentation/riverpod/action_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


//dioprovider
final dioProvider = Provider((ref) => Dio());

//datasourcesprovider
final getAllActionsDatasource = Provider((ref) {
  return GetAllActionsRemoteDatasourceImp(ref.watch(dioProvider));
},);

//repositoryprovider
final getAllActionsRepository = Provider((ref) {
  return GetAllActionsRepositoryImp(ref.watch(getAllActionsDatasource));
},);
//usecaseprovider
final getAllActionsUsecases = Provider((ref) {
  return GetAllActionsUsecasesImp(ref.watch(getAllActionsRepository));
},);

//notifier provider
final actionsNotifierProvider = StateNotifierProvider<ActionNotifier, List<InvestEntity>>((ref) {
  return ActionNotifier(ref.watch(getAllActionsUsecases));
},);