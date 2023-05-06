import 'package:flutter_test/flutter_test.dart';
import 'package:qscondominio/app/shared/utils/extensions.dart';

void main() {
  group('DateTime extensions tests', () {
    test(
        'when calling toDMY in a DateTime should return a Brazilian format day/month/year ',
        () async {
      final unformattedDateTime = DateTime(1989, 01, 28);
      final formarttedDateTeTune = unformattedDateTime.toDMY();
      expect(formarttedDateTeTune, equals('28/01/1989'));
    });
    test(
        'when calling toDMYHM in a DateTime should return a Brazilian format day/month/year HOUR:MINUTE ',
        () async {
      final unformattedDateTime = DateTime(1989, 01, 28, 22, 15);
      final formarttedDateTeTune = unformattedDateTime.toDMYHM();
      expect(formarttedDateTeTune, equals('28/01/1989 22:15'));
    });
  });
}
