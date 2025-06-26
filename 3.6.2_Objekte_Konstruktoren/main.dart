class Button {
  String title;
  int width;
  int height;
  int radius;
  int fontSize;
  int padding;

  Button(
    // positional parameter
    this.title, {
    // named parameter
    required this.width,
    required this.height,
    required this.radius,
    required this.fontSize,
    required this.padding,
  });
}

void main() {
  Button b = Button(
    'In den Warenkorb',
    width: 96,
    height: 32,
    radius: 4,
    fontSize: 14,
    padding: 8,
  );
}
