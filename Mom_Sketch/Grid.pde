class Box {

  PImage[] images = new PImage[87];
  float c = 255;

  Box() {
    imageMode(CENTER);
    for (int i = 0; i < images.length; i++) {
      images[i] = loadImage((i+1)+".jpg");
    }
  }

  void display(float x, float y, int choice) {
    // tint(255,c);
    image(images[choice], x, y);
  }
}