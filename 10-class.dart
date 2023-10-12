class Dog {
  String breed;
  String color;

  Dog(this.breed, this.color);

  void bark() {
    print("bhau bhau");
  }

  void sleep() {
    print("ZZZZZZ");
  }

  void tellYourColour() {
    print("My colors is ${color}");
  }
}

void main() {
  Dog tommy = Dog("xyzbreed", "black");
  Dog monty = Dog("abcbreed", "white");
  tommy.bark();
  monty.bark();
  tommy.tellYourColour();
  monty.tellYourColour();
}
