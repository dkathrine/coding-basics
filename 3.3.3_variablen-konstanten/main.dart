void main() {
  /* Start Aufgabe 1a */
  String gdStr = "Guten";
  String dayStr = "Tag";
  String worldStr = "Welt";
  /* 
    variable d wurde hier als int deklariert 
    habe variable d in e umbenannt damit code im terminal ausführbar ist
  */
  int e = 20;
  String timeStr = "Zeit";
  int seven = 7;
  int twelve = 12;
  /* variable d wurde hier ein zweites mal vergeben in den Aufgaben */
  String d = "!";
  int a = 24;
  String c = "Schöne";
  String morning = "Morgen";
  String s = "Heute";
  String spa = " ";

  /* Start Aufgabe 1b */
  String goodDay = gdStr + spa + dayStr;
  print(goodDay);

  String helloWorld = gdStr + spa + dayStr + spa + worldStr + d;
  print(helloWorld);

  int sum1 = seven + a;
  print(sum1);

  String niceTime = c + spa + timeStr + d;
  print(niceTime);

  String niceMorning = s + spa + morning + d;
  print(niceMorning);

  int sum2 = seven * a;
  print(sum2);
}
