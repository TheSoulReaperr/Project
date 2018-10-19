Cloud clouds[];

void initClouds() {
  clouds = new Cloud[5];
  for (int i=0; i<clouds.length; i++) {
    clouds[i] = new Cloud();
  }
}

void drawClouds() {
  for (int i=0; i<clouds.length; i++) {
    clouds[i].move();
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Cloud {
  float x = random(0, 1400);
  float y = random(50, 250);
  float size = random(50, 90);

  void resetCoords() {    
    x = random(1500, 1800);
    y = random(0, 300);
    size = random(50, 90);
  }

  void move() {
    fill(255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, size, size);
    ellipse(x+size/2, y+size/3, size*0.9, size*0.9);
    ellipse(x, y+size/1.5, size*0.85, size*0.85);
    ellipse(x-size/1.5, y+size/4, size*0.9, size*0.9);
    ellipse(x-size/1.4, y+size/1.5, size*1.1, size*0.7);
    ellipse(x-size*1.25, y+size/2, size*0.75, size*0.75);
    x -= speed*(y/1000)+0.3;    
    if (x < - 300) {
      resetCoords();
    }
  }
}
