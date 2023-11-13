import 'package:ascii_calendar/ascii_calendar.dart' as ascii_calendar;

void main(List<String> arguments) {
  if (arguments.length != 2) {
    print(
        'Bitte geben Sie genau zwei Argumente ein: Monat (1-12) und Startwochentag (1-7).');
    return;
  }

  try {
    int month = int.parse(arguments[0]);
    int startWeekday = int.parse(arguments[1]);

    // Überprüfen, ob die Werte im erwarteten Bereich liegen
    if (month < 1 || month > 12) {
      print('Der Monatswert muss zwischen 1 und 12 liegen.');
      return;
    }
    if (startWeekday < 1 || startWeekday > 7) {
      print('Der Startwochentag muss zwischen 1 (MO) und 7 (SO) liegen.');
      return;
    }

    ascii_calendar.printCalendar(month, startWeekday);
  } catch (e) {
    print(
        'Fehler bei der Verarbeitung der Argumente: Stellen Sie sicher, dass sowohl Monat als auch Startwochentag Zahlen sind.');
  }
}
