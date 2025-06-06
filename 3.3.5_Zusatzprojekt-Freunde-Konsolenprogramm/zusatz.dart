import "dart:io";

/* enum for transportmittel */
enum Transportmittel {
  Auto,
  Zug,
  Fahrrad,
  Bus,
  Laufen;

  /* adding geschwindigkeit as a getter in transportmittel */
  int get geschwindigkeit {
    switch (this) {
      case Transportmittel.Auto:
        return 90;
      case Transportmittel.Zug:
        return 120;
      case Transportmittel.Fahrrad:
        return 20;
      case Transportmittel.Bus:
        return 60;
      case Transportmittel.Laufen:
        return 5;
    }
  }
}

void main() {
  /* read and save user input into terminal */
  print("Wähle ein Transportmittel: Auto, Zug, Fahrrad, Bus, Laufen");
  String? input = stdin.readLineSync()?.toLowerCase();

  /* old code before switching to a getter */
  /*   Transportmittel mittel;
  int geschwindigkeit = 0;

  switch (input) {
    case "auto":
      mittel = Transportmittel.Auto;
      geschwindigkeit = 90;
      break;
    case "zug":
      mittel = Transportmittel.Zug;
      geschwindigkeit = 120;
      break;
    case "fahrrad":
      mittel = Transportmittel.Fahrrad;
      geschwindigkeit = 20;
      break;
    case "bus":
      mittel = Transportmittel.Bus;
      geschwindigkeit = 60;
      break;
    case "laufen":
      mittel = Transportmittel.Laufen;
      geschwindigkeit = 5;
      break;
    default:
      print("Ungültige Eingabe. Standardmäßig wird Auto verwendet.");
      mittel = Transportmittel.Auto;
      geschwindigkeit = 90;
  } */

  Transportmittel? mittel;
  /* depending on the input and if Transportmittel is not null */
  switch (input) {
    case "auto":
      mittel = Transportmittel.Auto;
      break;
    case "zug":
      mittel = Transportmittel.Zug;
      break;
    case "fahrrad":
      mittel = Transportmittel.Fahrrad;
      break;
    case "bus":
      mittel = Transportmittel.Bus;
      break;
    case "laufen":
      mittel = Transportmittel.Laufen;
      break;
    default:
      print("Ungültige Eingabe. Standardmäßig wird Auto verwendet.");
      mittel = Transportmittel.Auto;
  }

  /* saving the selected geschwindigkeit into variable */
  int geschwindigkeit = mittel.geschwindigkeit;

  /* console log for selected mittel with speeds */
  print(
    "Gewähltes Transportmittel: ${mittel} mit einer Geschwindigkeit von $geschwindigkeit km/h",
  );

  /* route with distance */
  Map<String, int> reiseroute = {
    "Max": 120,
    "Peter": 90,
    "Anna": 270,
    "Lisa": 150,
  };

  /* 
    console log to prompt the user to input more friends if needed/wanted
    reading and saving user input into weitereFreunde variable 
  */
  print("Willst du weitere FReunde hinzufügen? (ja/nein)");
  String? weitereFreunde = stdin.readLineSync()?.toLowerCase();

  /* 
    if the user inputs "ja", the program will ask for names and distances
    until the user inputs "nein" or something else
  */
  while (weitereFreunde == "ja") {
    print("Gib den Namen des Freundes ein:");
    String? name = stdin.readLineSync();
    print("Gib die Distanz in km ein:");
    String? distanzInput = stdin.readLineSync();

    /* 
      if the name and distance are not null, parse the distance to an int
      and add it to the reiseroute map with the name as key
      if the distance is not a valid number, print an error message
    */
    if (name != null && distanzInput != null) {
      int? distanz = int.tryParse(distanzInput);
      if (distanz != null) {
        reiseroute[name] = distanz;
      } else {
        print("Ungültige Distanz. Bitte eine Zahl eingeben.");
      }
    }

    /* ask the user if they want to add more friends */
    print("Willst du weitere Freunde hinzufügen? (ja/nein)");
    weitereFreunde = stdin.readLineSync()?.toLowerCase();
  }

  /* sorting, calculating and printing the distances and times for each friend as well as the overall distance and time*/
  var sortedReiseroute = reiseroute.entries.toList()
    ..sort((a, b) => a.value.compareTo(b.value));

  int gesamtKm = 0;
  double gesamtZeit = 0.0;

  for (var entry in sortedReiseroute) {
    String name = entry.key;
    int distanz = entry.value;
    double zeit = distanz / geschwindigkeit;
    print("$name: $distanz km / ${zeit.toStringAsFixed(2)} Stunden");

    gesamtKm += distanz;
    gesamtZeit += zeit;
  }

  /*   reiseroute.forEach((name, distanz) {
    double zeit = distanz / geschwindigkeit;
    print("$name: $distanz km / ${zeit.toStringAsFixed(2)} Stunden");

    gesamtKm += distanz;
    gesamtZeit += zeit;
  }); */

  /* calculating the average distance and time */
  double durchschnittKm = gesamtKm / reiseroute.length;
  double durchschnittZeit = gesamtZeit / reiseroute.length;

  print("Gesamtstrecke: $gesamtKm km");
  print("Gesamtfahrzeit: ${gesamtZeit.toStringAsFixed(2)} Stunden");
  print("Durchschnittliche Strecke: ${durchschnittKm.toStringAsFixed(2)} km");
  print(
    "Durchschnittliche Fahrzeit: ${durchschnittZeit.toStringAsFixed(2)} Stunden",
  );
}
