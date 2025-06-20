void main() {
  //AUfgabe1
  print(calculateSum3(2, 4, 10));
  print(calculateSum3(15, 7, 6));
  print(calculateSum3(22, 16, 33));

  //Aufgabe2
  print(countLetters('123456789'));
  print(countLetters('Hallo App Akademie!'));
  print(
    countLetters(
      'HierStehtEinLangerBandwurmSatzCrazyWasManAllesSoHierReinSchreibenKannDasIstJaFantastisch!!!!!11',
    ),
  );

  //Aufgabe3
  print(countVowels("lorem pipsum"));
  print(countVowels("aaaaaaaaaaaaaaa"));
  print(countVowels("another one L O L"));
}

// AUfgabe1
int calculateSum3(int num1, int num2, int num3) {
  return num1 + num2 + num3;
}

//Aufgabe2
int countLetters(String text) {
  return text.length;
}

//Aufgabe3
int countVowels(String text) {
  final vowels = {"a", "e", "i", "o", "u"};
  return text
      .toLowerCase()
      .split("")
      .where((char) => vowels.contains(char))
      .length;
}
