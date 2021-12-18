class WorkWithDateAndTime {
  //Get the beginning of the year from the specified date
  static DateTime beginOfYear({required DateTime dateTime}) =>
      DateTime(dateTime.year);

  //Get the beginning of the quarter from the specified date
  static DateTime beginOfQuarter({required DateTime dateTime}) =>
      DateTime(dateTime.year, (dateTime.month / 3).ceil(), 1);

  //Get the beginning of the month from the specified date
  static DateTime beginOfMonth({required DateTime dateTime}) =>
      DateTime(dateTime.year, dateTime.month, 1);

  //Get the beginning of the day from the specified date
  static DateTime beginOfDay({required DateTime dateTime}) =>
      DateTime(dateTime.year, dateTime.month, dateTime.day);

  //Get the beginning of the hour from the specified date
  static DateTime beginOfHour({required DateTime dateTime}) =>
      DateTime(dateTime.year, dateTime.month, dateTime.day, dateTime.hour);

  //Get the beginning of the minute from the specified date
  static DateTime beginOfMinute({required DateTime dateTime}) => DateTime(
      dateTime.year,
      dateTime.month,
      dateTime.day,
      dateTime.hour,
      dateTime.minute);

  //Get the end of the year from the specified date
  static DateTime endOfYear({required DateTime dateTime}) =>
      DateTime(dateTime.year, 12, 31, 23, 59, 59, 999);

  //Get the end of the quarter from the specified date
  static DateTime endOfQuarter({required DateTime dateTime}) {
    final month = dateTime.month;
    final year = dateTime.year;
    if (month >= 1 && month <= 3) {
      return DateTime(year, 3, 31, 23, 59, 59, 999);
    } else if (month >= 4 && month <= 6) {
      return DateTime(year, 6, 30, 23, 59, 59, 999);
    } else if (month >= 7 && month <= 9) {
      return DateTime(year, 9, 30, 23, 59, 59, 999);
    } else {
      return DateTime(year, 12, 31, 23, 59, 59, 999);
    }
  }

  //Get the end of the month from the specified date
  DateTime endOfMonth({required DateTime dateTime}) {
    if (dateTime.month == 2) {
      var day = 28;
      if (isLeapYear(dateTime: dateTime)) day = 29;
      return DateTime(dateTime.year, 2, day, 23, 59, 59, 999);
    }

    if (dateTime.month % 2 == 0 && dateTime.month <= 7) {
      return DateTime(dateTime.year, dateTime.month, 30, 23, 59, 59, 999);
    }

    if (dateTime.month % 2 != 0 && dateTime.month > 7) {
      return DateTime(dateTime.year, dateTime.month, 30, 23, 59, 59, 999);
    }

    return DateTime(dateTime.year, dateTime.month, 31, 23, 59, 59, 999);
  }

  //Get the end of the day from the specified date
  static DateTime endOfDay({required DateTime dateTime}) =>
      DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59, 999);

  //Get the end of the hour from the specified date
  static DateTime endOfHour({required DateTime dateTime}) => DateTime(
      dateTime.year, dateTime.month, dateTime.day, dateTime.hour, 59, 59, 999);

  //Get the end of the minute from the specified date
  static DateTime endOfMinute({required DateTime dateTime}) => DateTime(
      dateTime.year,
      dateTime.month,
      dateTime.day,
      dateTime.hour,
      dateTime.minute,
      59,
      999);

  //Get a new date by adding or subtracting days
  //If numberOfDay is positive, then the days are added
  // If numberOfDay is negative, then the days are taken away
  static DateTime addDay(
      {required DateTime dateTime, required int numberOfDay}) {
    if (numberOfDay == 0) return dateTime;

    if (numberOfDay > 0) return dateTime.add(Duration(days: numberOfDay));

    return dateTime.subtract(Duration(days: numberOfDay));
  }

  //Is it a leap year ?
  static bool isLeapYear({required DateTime dateTime}) {
    if (dateTime.year % 4 == 0) {
      if (dateTime.year % 100 == 0) {
        if (dateTime.year % 400 == 0) return true;
      } else
        return true;
    }
    return false;
  }
}
