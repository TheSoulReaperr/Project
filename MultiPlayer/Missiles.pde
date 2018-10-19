PImage Missile1;
Missile missiles[];

void initMissiles() {
  float x =1400;
  missiles = new Missile[4];
  for (int i=0; i< missiles.length; i++) {
    missiles[i] = new Missile(x);
    x+=random(1000,2000);
  }
}

void drawMissiles() {
  for (int i=0; i< missiles.length; i++) {
    missiles[i].Draw();
  }
}

//----------------------------------------------------------------------------------------------------------------------------------------------------------

class Missile {
  float x;
  float y;
  float w;
  float h;
  float mSpeed;

  Missile(float _x) {
    x = _x;
    y = random(0, height);
    w = random(100, 120);
    h = random(30, 40);
    mSpeed = speed*random(1.5, 2.5);
  }

  void Draw() {
    tint(255,255);
    image(Missile1, x, y, w, h);
    if(GameScreen ==1)
    x-=mSpeed;
    if (x < -w) {
      x = random(1400, 2200);
      y = random(0, height);
      w = random(100, 120);
      h = random(30, 40);
      mSpeed = speed * random(2.0, 2.5);
    }

    if (p1X + pW -10 > x && p1X + 10 < x + w && p1Y + pH - 10 > y  && p1Y + 10< y + h) {
      Crash(1);
    }
    else if (p2X + pW -10 > x && p2X + 10 < x + w && p2Y + pH - 10 > y  && p2Y + 10< y + h) {
      Crash(2);
    }
  }
}
