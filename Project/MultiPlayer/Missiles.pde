PImage Missile01;
PImage Missile02;
PImage Missile03;
PImage Missile04;

Missile missiles[];

void initMissiles() {
  float x =1400*m;
  missiles = new Missile[4];
  for (int i=0; i< missiles.length; i++) {
    missiles[i] = new Missile();
    missiles[i].missile(x);
    x+=random(1000+m,2000*m);
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
  float h1;
  float h2;
  float mSpeed;
  PImage Missile;

  void missile(float _x) {
    x = _x;
    y = random(0, height);
    switch(int(random(0,11))) {
      case 0 : 
      case 1 :
      case 2 : 
      case 3 : w = 110*m;  h = 30*m;  Missile = Missile01;  h1 = 1.7*m;  h2 = 2.7*m;  break;
      case 4 : 
      case 5 : 
      case 6 : w = 90*m;   h = 30*m;  Missile = Missile02;  h1 = 2.5*m;  h2 = 3.5*m;  break;
      case 7 :
      case 8 :
      case 9 : w = 90*m;   h = 30*m;  Missile = Missile03;  h1 = 1.2*m;  h2 = 2.0*m;  break;
      case 10: w = 300*m;  h = 80*m;  Missile = Missile04;  h1 = 1.0*m;  h2 = 1.2*m;  break;
    }
    mSpeed = speed*random(h1,h2);
  }

  void Draw() {
    tint(255,255);
    image(Missile, x, y, w, h);
    if(GameScreen ==1)
    x-=mSpeed;
    if (x < -w) {
      x = random(1400*m, 2200*m);
      missile(x);
    }

    if (p1X + pW -10 > x && p1X + 10 < x + w && p1Y + pH - 10 > y  && p1Y + 10< y + h) {
      Crash(1);
    }
    else if (p2X + pW -10 > x && p2X + 10 < x + w && p2Y + pH - 10 > y  && p2Y + 10< y + h) {
      Crash(2);
    }
  }
}
