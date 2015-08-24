function Box() {

  this.images = [];
  this.c = 255;

  for (var i = 0; i < 87; i++) {
    loadImage("data/"+(i+1)+".jpg", loaded.bind(this));
  }

  this.display = function(x, y, choice) {
    imageMode(CENTER);
    if (this.images[choice]) {
      image(this.images[choice], x, y);
    }
  }

  function loaded(img) {
    this.images.push(img); 
  };

}

