//DateTime extensions:
import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String toDMY() {
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(this);
  }

  String toDMYHM() {
    final formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(this);
  }
}
