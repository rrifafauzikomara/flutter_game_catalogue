import 'package:intl/intl.dart';

class DateFormatter{
  static String dateFormatter(String date){
    return DateFormat("dd MMMM yyyy").format(DateTime.parse(date));
  }
}