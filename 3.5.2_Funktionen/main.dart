void main() {
  printNumber(5);
  printNumber(8);
  printNumber(666);

  triplePrint('Hello App Akademie');
  triplePrint('Another one lol');

  reverseInitials('Kathrine', 'Beuth');
  reverseInitials('Joyce', 'O');
}

void printNumber(int number) {
  print(number);
}

void triplePrint(String text) {
  print(text);
  print(text);
  print(text);
}

void reverseInitials(String vorname, String name) {
  print(
    '${vorname[vorname.length - 1].toUpperCase()}. ${name[name.length - 1].toUpperCase()}.',
  );
}
