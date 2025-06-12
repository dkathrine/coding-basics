import 'dart:io';

enum Weekday { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  /* Aufgabe 1 */
  Weekday? weekday;

  weekday = Weekday.wednesday; /* Change this to test different cases */

  switch (weekday) {
    case Weekday.monday || Weekday.tuesday:
      print("Montage und Dienstag sind anstregend");
    case Weekday.wednesday || Weekday.thursday:
      print("Mittwoch und Donnerstag sind ok");
    case Weekday.friday:
      print("Freitag ist super");
    case Weekday.saturday || Weekday.sunday:
      print("Wochenende ist genial");
    default:
      print("Kein Tag ausgewählt");
  }

  /* Aufgabe 2 */
  print("Bitte gib dein Geschlecht ein (male/female)");
  String? sex = stdin.readLineSync();

  print("Bitte gib dein Alter ein (20-25/25-30/30-35)");
  String? age = stdin.readLineSync();

  switch (sex) {
    case "male":
      switch (age) {
        case "20-25":
          print("Im Schnitt 181,4m");
        case "25-30":
          print("Im Schnitt 181,3m");
        case "30-35":
          print("Im Schnitt 180,4m");
      }
    case "female":
      switch (age) {
        case "20-25":
          print("Im Schnitt 167,5m");
        case "25-30":
          print("Im Schnitt 167,3m");
        case "30-35":
          print("Im Schnitt 167,2m");
      }
  }
}
