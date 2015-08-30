var box;

var choice = 1;
var off = 1;

function setup() {
  createCanvas(windowWidth, windowHeight);
  box = new Box();
  background(0);
}

function draw() {

  for (var x = 250; x < width; x = x + 425) {
    for (var y = 200; y < height; y = y + 350) {
      if (mouseX > x -200 && mouseX < x + 200 && mouseY > y -150 && mouseY < y + 150) {
        if (mouseIsPressed) {
          box.display(x, y + off, choice);
        } else {
          choice = floor(random(0, 87));
          off = random(-30, 30);
        }
      }
    }
  }

  //50 200 200 25 200 200 25 200 200 50

  fill(0, 2);
  //rect(0, 0, width, height);
}