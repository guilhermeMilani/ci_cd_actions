
import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';

abstract class GetAllActionsUsecases {
  Future<List<InvestEntity>> getAllActions();
}