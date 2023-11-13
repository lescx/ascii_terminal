/*
|MO|DI|MI|DO|FR|SA|SO|
|  |  | 1| 2| 3| 4| 5|
| 6| 7| 8| 9|10|11|12|
|13|14|15|16|17|18|19|
|20|21|22|23|24|25|26|
|27|28|29|30|31|  |  |
*/

// Wrapper function for printCalender
// Does not get called directly
void printWeekdays(int startWeekday) {
  print('|${weekdays.join('|')}|');
}

// Wrapper function for printCalender
// Does not get called directly
void printDate(int month) {
  StringBuffer buffer = StringBuffer();

  for (int day = 1; day <= daysInMonth[month - 1]; day++) {
    buffer.write('| $day ');
    if (day % 7 == 0) {
      buffer.write('|\n');
    }
  }
  buffer.write('|');

  String result = buffer.toString();
  print(result);
}

void printCalendar(int month, int startWeekday) {
  printWeekdays(startWeekday);
  printDate(month);
}

// Leap year is not taken into account
List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// In this case, 'MO' is index 0; ascii_terminal does not make assumptions on
// which weekday is which index. The user specifies the start of the index
// in printCalendar(int, int)
List<String> weekdays = ['MO', 'DI', 'MI', 'DO', 'FR', 'SA', 'SO'];
