import 'package:ci_cd_tutorial/util/time_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("TimeHelper", () {
    test("should return Night", () {
      expect(TimeHelper.getTimeOfTheDay(DateTime(2023, 1, 1, 5)), "Night");
    });

    test("should return Morning", () {
      expect(TimeHelper.getTimeOfTheDay(DateTime(2023, 1, 1, 9)), "Morning");
    });

    test("should return Afternoon", () {
      expect(TimeHelper.getTimeOfTheDay(DateTime(2023, 1, 1, 17)), "Afternoon");
    });

    test("should return Evening", () {
      expect(TimeHelper.getTimeOfTheDay(DateTime(2023, 1, 1, 22)), "Evening");
    });
  });
}
