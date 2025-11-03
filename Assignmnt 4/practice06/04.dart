//Write a dart program to create a class Animal with properties [id, name, color]. 
//Create another class called Bird and extends it from Animal.
// Add new properties sound in String. Create an object of a Bird and print all details.

class Animal{
  int id;
  String name;
  String color;

  Animal(this.id , this.name, this.color);
}

class Bird extends Animal{
  String sound;

  Bird(int id, String name, String color, this.sound) : super(id, name, color);

  void display(){
    print("Bird ID: $id");
    print("bird name: $name");
    print("Bird color: $color");
    print("Sound : $sound");
  }
}

void main(){
  Bird c= Cat(1, "Tom", "Blue", "Kichikichi");
  Bird d= Cat(2, "Oggy", "Sky blue", "vaiyaaa");
  Bird e= Cat(3, "Jack", "Green", "Tordunga fordunga");
  Bird f = Cat(4, "Oli", "pink", "Oggyyy");

  List<Bird>Birds = [c, d, e, f];

  for(var i in Birds) {
    i.display();
  }
}
