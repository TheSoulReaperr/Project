PImage Missile1;
Missile missiles[];

void initMissiles() {
  float x =1400;
  missiles = new Missile[3];
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
  float Homing;

  Missile(float _x) {
    x = _x;
    y = random(0, 500);
    w = random(100, 120);
    h = random(30, 40);
    mSpeed = speed*random(1.5, 2.5);
    Homing = 2.5;
  }

  void Draw() {
    image(Missile1, x, y, w, h);
    if (y > playerY ) y-=Homing;
    else if (y < playerY) y+=Homing;
    if(GameScreen ==1)
    x-=mSpeed;
    if (x < -w) {
      x = random(1400, 2200);
      y = random(0, 500);
      w = random(100, 120);
      h = random(30, 40);
      mSpeed = speed * random(2.0, 2.5);
    }

    if (playerX + playerW -10 > x && playerX + 10 < x + w && playerY + playerH - 10 > y  && playerY + 10< y + h) {
      Crash();
    }
  }
}
