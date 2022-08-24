import 'package:flutter_application_1/src/domain/entities/invest_entity.dart';

abstract class GetAllActionsDatasource {
  Future<List<InvestEntity>> getAllActions();
}
