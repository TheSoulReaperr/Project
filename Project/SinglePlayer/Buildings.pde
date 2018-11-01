Building building[];
float bX;
float bY;
float bW;
float bH;

void initBuildings() {
  building = new Building[25];
  bX = 0;
  float bw = 0;
  for (int i=0; i<building.length; i++) {
    bW = random(60*m, 120*m);
    bH = random(40*m, 230*m);
    bX+=bw - (bw/2-bW/2);
    building[i] = new Building(bX, bW, bH);
    bw = bW;
  }
}

void drawBuildings() {
  for (int i=0; i<building.length; i++) {    
    building[i].Draw();
    building[i].move();
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Building {
  float x;
  float y;
  float w;
  float h;
  int r;
  int g;
  int b;
  int sr;
  int sg;
  int sb;

  Building(float a, float b, float c) {
    x = a*m;
    w = b*m;
    h = c*m;
    y = 680*m - h/2;
    r = int(random(0, 155));
    g = int(random(0, 155));
    b = int(random(0, 155));
    sr = int(random(0, 100));
    sg = int(random(0, 100));
    sb = int(random(0, 100));
  }

  void Draw() {
    fill(r, g, b);
    strokeWeight(4);
    stroke(sr, sg, sb);
    rect(x, y, w, h);
    strokeWeight(2);
    stroke(r-10, g-10, b-10);
    fill(#DBF56A);
    rect(x-w/4, y-h/4, w/4, h/5);
    rect(x-w/4, y+h/4, w/4, h/5);
    rect(x+w/4, y+h/4, w/4, h/5);
    rect(x+w/4, y-h/4, w/4, h/5);
  }

  void move() {
    x-=speed;
    if (x < -w/2) {
      x = bX;
      y = 680 - h/2;
    }

    if (playerY + playerH > y - h/2 + 10) {
      if (playerX + playerW > x-w/2+10 && playerX < x+w/2-10) {
        Crash();
      }
    }
  }
}
