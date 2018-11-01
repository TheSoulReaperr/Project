PImage Missile01;
PImage Missile02;
PImage Missile03;
PImage Missile04;
Missile missiles[];

void initMissiles() {
  float x =1400*m;
  missiles = new Missile[3];
  for (int i=0; i< missiles.length; i++) {
    missiles[i] = new Missile();
    missiles[i].missile(x);
    x+=random(1000,2000)*m;
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
  float Homing;
  PImage Missile;

  void missile(float _x) {
    x = _x*m;
    y = random(0, 500)*m;
    switch(int(random(0,11))) {
      case 0 : 
      case 1 :
      case 2 : 
      case 3 : w = 110*m;  h = 30*m;  Missile = Missile01;  h1 = 1.7*m;  h2 = 2.7*m;  Homing = 2.0*m;  break;
      case 4 : 
      case 5 : 
      case 6 : w = 90*m;   h = 30*m;  Missile = Missile02;  h1 = 2.5*m;  h2 = 3.5*m;  Homing = 1.2*m;  break;
      case 7 :
      case 8 :
      case 9 : w = 90*m;   h = 30*m;  Missile = Missile03;  h1 = 1.2*m;  h2 = 2.0*m;  Homing = 3.0*m;  break;
      case 10: w = 300*m;  h = 80*m;  Missile = Missile04;  h1 = 1*m;  h2 = 1.2*m;  Homing = 0.1*m;  break;
    }
    mSpeed = speed*random(h1,h2);
  }

  void Draw() {
    image(Missile, x, y, w, h);
    if (y > playerY ) y-=Homing;
    else if (y < playerY) y+=Homing;
    if(GameScreen ==1)
    x-=mSpeed;
    if (x < -w) {
      x = random(1400, 2200)*m;
      missile(x);
    }

    if (playerX + playerW -10 > x && playerX + 10 < x + w && playerY + playerH - 30 > y  && playerY + 10< y + h) {
      Crash();
    }
  }
}
