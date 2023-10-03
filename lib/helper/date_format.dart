import 'package:intl/intl.dart';

class FormatUtils {
  static String convertToHours(String date) {
    return DateFormat('dd MMM HH:mm').format(DateTime.parse(date).toLocal());
  }

  static String convertToFullFormat(String date) {
    return DateFormat('EEEE, dd MMMM HH:mm').format(DateTime.parse(date).toLocal());
  }
}
