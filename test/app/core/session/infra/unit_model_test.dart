import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:qscondominio/app/core/session/infra/unit_model.dart';

void main() {
  late final String apiResult;

  setUp(() {
    apiResult =
        File('test/app/core/session/infra/unit.json').readAsStringSync();
  });

  test('UnitModel - Should return an correct object with the expected values',
      () {
    Map<String, dynamic> map = json.decode(apiResult);
    UnitModel unitModel = UnitModel.fromJson(map);
    expect(unitModel.id, equals(13));
    expect(unitModel.description, equals('FBI - X FILES'));
  });
}
