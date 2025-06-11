void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  /* --------------------------------more advanced solution--------------------------- */
  /* 
  before I knew that we shouldn't use loops these were my two solutions 
  at first we loop through the first List of weatherData and add the temprature values to a new list called temps if the value is null a 0 is added instead
*/
  /* List<double?> temps = [];

  weatherData.forEach((data) {
    if (data['temp'] != null) {
      temps.add(data['temp']);
    }
  }); */

  /* 
  then we calculate the average temperature by iterating through the temps list using the reduce method, adding up all the values, and dividing by the length of the list.
*/
  /* double averageTemp =
      (temps.reduce((a, b) => (a ?? 0) + (b ?? 0)) ?? 0) / temps.length; */

  /* 
  I wrote down a second solution using a forEach loop to do the same as the .reduce method, since we didn't talk about .reduce in the course yet (I somehow thought we already did talk about loops tho)
*/
  /* double sum = 0;

  temps.forEach((temp) {
    if (temp != null) {
      sum += temp;
    }
  });

  double? averageTemp = sum / temps.length; */

  /* 
  anyway, I then printed the average temperature to the console
*/
  /* print('Durchschnittstemperatur: ${averageTemp.toStringAsFixed(2)}'); */
  /* -------------------------------------------------------------------------------- */

  /* removed ? to ensure the list of temps has no null-values */
  List<double> temps = [];

  /* adding 0 to the list if value is null */
  temps.add(weatherData[0]['temp'] ?? 0);
  temps.add(weatherData[1]['temp'] ?? 0);
  temps.add(weatherData[2]['temp'] ?? 0);

  /* calculating the averageTemp by adding up the values and dividing them by the length of the list */
  double avgTemp = (temps[0] + temps[1] + temps[2]) / temps.length;
  print('Durchschnittstemperatur: ${avgTemp.toStringAsFixed(2)}');
}
