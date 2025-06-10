import "dart:io";

void main() {
  /* 
    asking for age, parental consent & move age rating
    & saving the input into variables
  */
  print("Type any age:");
  int age = int.parse(stdin.readLineSync()!);
  print("Do you have parental consent? (true/false)");
  bool hasParentalConsent = stdin.readLineSync()!.toLowerCase() == 'true';
  print("Enter the movie's age rating:");
  int movieAgeRating = int.parse(stdin.readLineSync()!);

  /* using the stored user inputs, it checks if the person is allowed to watch the movie or not */
  if (age >= movieAgeRating ||
      hasParentalConsent && age >= (movieAgeRating - 2)) {
    print("you are allowed to watch the movie.");
  } else {
    print("you are not allowed to watch the movie.");
  }
}
