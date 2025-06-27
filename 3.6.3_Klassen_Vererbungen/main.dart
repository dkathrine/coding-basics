class Tool {
  String name;
  String brand;
  String material;
  double price;

  Tool(this.name, this.brand, this.material, this.price);

  void cost() {
    print("$name costs $price!");
  }
}

class Hammer extends Tool {
  Hammer(super.name, super.brand, super.material, super.price);

  void bonk(String thing) {
    print("The Hammer $name from $brand did bonk $thing.");
  }
}

class Pan extends Tool {
  Pan(super.name, super.brand, super.material, super.price);

  void cook() {
    print(
      "I love cooking food with my Pan $name from $brand made out of $material for an abysmal price of $price.",
    );
  }
}

void main() {
  Pan pan1 = Pan("SuperPan9000", "Over9000?", "stainless steel", 9999.99);
  Hammer hammer1 = Hammer(
    "Hammi of the Year",
    "Fantastic Hammers",
    "Bread",
    0.5,
  );

  pan1.cook();
  hammer1.bonk("this stone");
}
