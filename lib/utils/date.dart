import 'package:intl/intl.dart';

String getTime(int seconds) {
  final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
  final String formattedTime =
      DateFormat.jm().format(dateTime); // j = hour, m = minute, a = am/pm

  return formattedTime;
}

String getDateAndTime(DateTime dateTime) {
  String formattedDate = DateFormat("M/d ha").format(dateTime);
  return formattedDate;
}
