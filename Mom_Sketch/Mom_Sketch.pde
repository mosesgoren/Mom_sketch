Box box;

int choice = 1;
float off = 1;

void setup() {
  size(1350, 750);
  box = new Box();
  background(0);
}

void draw() {

  for (float x = 250; x < width; x = x + 425) {
    for (int y = 200; y < height; y = y + 350) {
      if (mouseX > x -200 && mouseX < x + 200 && mouseY > y -150 && mouseY < y + 150) {
        if (mousePressed) {
          box.display(x, y + off, choice );
        } else {
          choice = int(random(0, 87));
          off = random(-30, 30);
        }
      }
    }
  }

  //50 200 200 25 200 200 25 200 200 50

  fill(0, 2);
  //rect(0, 0, width, height);
}