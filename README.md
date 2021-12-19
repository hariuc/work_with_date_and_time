
## work_with_date_and_time

A Dart library for working with DateTime

## Using the library

1. Adding the following lines to the pabspec.yaml file:

```yaml
dependencies:
  work_with_date_and_time:
    git:
      url: https://github.com/hariuc/work_with_date_and_time.git
 ```

2. Run `dart pub get` or `flutter pub get`

3. Importing the package into your dart code:

```dart
import 'package:work_with_date_and_time/work_with_date_and_time.dart';
```

4. Using the `WorkWithDateAndTime` class:

```dart
//Example 1
var isLeapYear = WorkWithDateAndTime.isLeapYear(dateTime: DateTime(2021));
print(isLeapYear);
// => false
```

```dart
//Example 2
var beginOfQuarter = WorkWithDateAndTime.beginOfQuarter(dateTime: DateTime(2021, 3));
print(beginOfQuarter);
// => 2021-01-01 00:00:00.000
```
