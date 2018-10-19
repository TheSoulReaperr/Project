Building buildings[];
float bX;
float bW;
float bH;

void initBuildings() {
  buildings = new Building[40];
  bX = 0;
  float bw =0;
  float h2 = 0;
  switch(level) {
    case 11 : h2 = 100; break; 
    case 12 : h2 = 130; break; 
    case 13 : h2 = 160; break; 
    case 14 : h2 = 190; break; 
    case 15 : h2 = 220; break; 
  }
  for (int i=0; i<buildings.length; i++) {
    bW = random(60, 100);
    bH = random(60, h2);
    bX+=bw - (bw/2-bW/2);
    buildings[i] = new Building(bX, bW, bH);
    bw = bW;
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawBuildings() {
  for (int i=0; i<buildings.length; i++) {    
    buildings[i].Draw();
    buildings[i].move();
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
    x = a;
    w = b;
    h = c;
    y = 680 - h/2;
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
