void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Günther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];

  /* Aufgabe 1 */
  for (String name in names) {
    print(name);
  }

  /* Aufgabe 2 */
  double avg = 0;
  for (int point in points) {
    avg += point;
  }
  avg = avg /= points.length;
  print('Der Durchschnitt der Punkte ist: ${avg.toStringAsFixed(3)}');
}
