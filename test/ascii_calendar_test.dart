import 'package:ascii_calendar/ascii_calendar.dart' as ascii_calendar;
import 'package:test/test.dart';

void main() {
  group('Calendar Tests', () {
    test('Correct Calendar for specific month', () {
      int month = 8; // August
      int startWeekday = 3; // Wednesday

      String expectCalendar = '''
|MO|DI|MI|DO|FR|SA|SO|
|  |  | 1| 2| 3| 4| 5|
| 6| 7| 8| 9|10|11|12|
|13|14|15|16|17|18|19|
|20|21|22|23|24|25|26|
|27|28|29|30|31|  |  |
''';
      var resultCalendar = ascii_calendar.printCalendar(month, startWeekday);

      expect(resultCalendar, equals(expectCalendar));
    });
  });
}
