Box box;

int choice1 = 1;
int choice2 = 1;
int choice3 = 1;
float countDown1 = 0;
float countDown2 = 50;
float countDown3 = 100;

float c;
float d;

float speed = 3.4;

int resolution = 2;

// seems like speed could be slightly slower. Will have to tweak.

float distance = 300;

boolean ending = false;

void setup() {
  size(1350, 400);
  box = new Box();
  background(0);
}

void draw() {

  background(0);

  box.display(250, 200, choice1 );
  box.display(675, 200, choice2 );
  box.display(1100, 200, choice3 );

  countDown1 = countDown1 + speed;
  countDown2 = countDown2 + speed;
  countDown3 = countDown3 + speed;
  
  if (countDown1 > 150) {
    choice1 = int(random(0, 87));
    countDown1 = 0;
  }
  if (countDown3 > 150) {
    choice3 = int(random(0, 87));
    countDown3 = 0;
  }
  if (countDown2 > 150) {
    choice2 = int(random(0, 87));
    countDown2 = 0;
  }

  if (keyPressed && key == ' ') {
    ending = true;
  }

  if (ending) {

    if (distance > 0) {
      distance = distance - 1;
    } else {
      distance = 0;
    }
  }


  for (float x = 0; x < width; x = x + resolution) {
    for (float y = 0; y < height; y = y + resolution) {
      d = dist (x, y, mouseX, mouseY);
      c = map(d, 0, distance, 0, 255);
      noStroke();
      fill(0, c);
      rect(x, y, resolution, resolution);
    }
  }
}