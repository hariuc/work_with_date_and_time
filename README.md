
## work_with_date_and_time

A Dart library for working with DateTime

## Using the library

1. Adding the following lines to the pabspec.yaml file
<dependencies:
> work_with_date_and_time: ^0.0.1>

2. Run <dart pub get> or <flutter pub get>

3. Importing the package into your dart code

<import 'package:work_with_date_and_time/work_with_date_and_time.dart';>

4. Using the work_with_date_and_time class

<//example 1
> var isLeapYear = WorkWithDateAndTime.isLeapYear(dateTime: DateTime(2021));
> print(isLeapYear);
> // => false>

<//example 2
> var beginOfQuarter = WorkWithDateAndTime.beginOfQuarter(dateTime: DateTime(2021, 3);
> print(beginOfQuarter);
> // => 2021-01-01 00:00:00.000>
