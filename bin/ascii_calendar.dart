import 'package:ascii_calendar/ascii_calendar.dart' as ascii_calendar;

void main(List<String> arguments) {
  if (arguments.length != 2) {
    print(
        'Please enter two arguments: month (1-12) and start weekday of month (1-7).');
    return;
  }

  try {
    int month = int.parse(arguments[0]);
    int startWeekday = int.parse(arguments[1]);

    // Überprüfen, ob die Werte im erwarteten Bereich liegen
    if (month < 1 || month > 12) {
      print('The month must be between 1 and 12.');
      return;
    }
    if (startWeekday < 1 || startWeekday > 7) {
      print('The start weekday must be between 1 (MO) and 7 (SO).');
      return;
    }

    print(ascii_calendar.printCalendar(month, startWeekday));
  } catch (e) {
    print(
        'Error in the processing of arguments. Make sure you entered integers for month and weekday.');
  }
}
