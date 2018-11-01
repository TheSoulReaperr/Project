Platform platforms[];
float PlatX;

void initPlatforms() {
  PlatX = -1000*m;
  float y = 900*m;
  float w;
  float h;
  platforms = new Platform[30];
  for(int i=0;i<platforms.length;i++) {
    w = random(350,1000)*m;
    h = random(300,600)*m;
    platforms[i] = new Platform(PlatX,y,w,h);
    PlatX += w - 20 - w/2;
  }
}

void drawPlatforms() {
  for(int i=0;i<platforms.length;i++) {
    platforms[i].Draw();
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Platform {
  float x;
  float y;
  float w;
  float h;

  Platform(float _x, float _y, float _w, float _h) {
    x = _x*m;
    y = _y*m;
    w = _w*m;
    h = _h*m;
  }

  void Draw() {
    switch(level) {
      case 3 : fill(#5BFAAE); break;
      case 5 : fill(#673D0B); break;
    }
    noStroke();
    rectMode(CENTER);
    rect(x, y, w, h);
    x-=speed/2;
    if(x <= -1000*m) {
      x = PlatX;
    }
  }
}
