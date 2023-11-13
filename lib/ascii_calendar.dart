// Leap year is not taken into account
List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// In this case, 'MO' is index 0; ascii_terminal does not make assumptions on
// which weekday is which index. The user specifies the start of the index
// in printCalendar(int, int)
List<String> weekdays = ['MO', 'DI', 'MI', 'DO', 'FR', 'SA', 'SO'];

// Wrapper function for printCalender
// Does not get called directly
String printWeekdays(int startWeekday) {
  return '|${weekdays.join('|')}|\n';
}

// Wrapper function for printCalender
// Does not get called directly
String printDate(int month, int startWeekday) {
  StringBuffer buffer = StringBuffer();
  int weekdayCounter = startWeekday;

  for (int i = 1; i < startWeekday; i++) {
    buffer.write('|  ');
  }

  for (int day = 1; day <= daysInMonth[month - 1]; day++) {
    // Formatting of each cell. Add ' ' if date is < 10.
    buffer.write(day < 10 ? '| $day' : '|$day');

    // Increment weekday counter and check for wrap
    weekdayCounter++;
    if (weekdayCounter > 7) {
      weekdayCounter = 1;
      buffer.write('|');
      if (day != daysInMonth[month - 1]) {
        buffer.write('\n');
      }
    }
  }
  buffer.write('|');

  // Fill the last week with empty cells if necessary
  for (int i = weekdayCounter; i <= 7; i++) {
    buffer.write(i == weekdayCounter ? '  ' : '|  ');
  }
  buffer.write('|\n');

  String result = buffer.toString();

  return result;
}

String printCalendar(int month, int startWeekday) {
  StringBuffer buffer = StringBuffer();

  buffer.write(printWeekdays(startWeekday));
  buffer.write(printDate(month, startWeekday));

  String calendar = buffer.toString();
  
  return calendar;
}
