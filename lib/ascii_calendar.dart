String returnWeekdays() {
  return '|' + weekdays.join('|') + '|';
}

// Leap year is not taken into account
List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// In this case, 'MO' is index 0; ascii_terminal does not make assumptions on
// which weekday is which index. The user specifies the start of the index
// in printCalendar(int, int)
List<String> weekdays = ['MO', 'DI', 'MI', 'DO', 'FR', 'SA', 'SO'];
