PImage missileImg1;
PImage missileImg2;
PImage missileImg3;
PImage missileImg4;
Missile missiles[];

void drawMissiles() {
  for (int i=0; i< missiles.length; i++) {
    missiles[i].Draw();
  }
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Missile {
  float x;
  float y;
  float w;
  float h;
  float h1;
  float h2;
  float MissileSpeed;
  float speedMul;
  float sMul1;
  float sMul2;
  float homing;
  PImage Missile;

  void missile(float _x, float _sMul1,float _sMul2, float hom) {
    if(level <= 5)  {  y = random(0, height);  }
    else if(level <= 10) { y = random(0,600); }
    else if(level <= 15) { y = random(200,500); }
    else if(level <= 20) { y = random(0,500); }
    x = _x*m;
    switch(int(random(0,11))) {
      case 0 : 
      case 1 :
      case 2 : 
      case 3 : w = 110*m;  h = 30*m;  Missile = missileImg1;  h1 =-0.3;  h2 = 0.0;  homing = 0.0;  break;
      case 4 : 
      case 5 : 
      case 6 : w = 70*m;   h = 20*m;  Missile = missileImg2;  h1 = 0.3;  h2 = 0.4;  homing =-0.8;  break;
      case 7 :
      case 8 :
      case 9 : w = 90*m;   h = 30*m;  Missile = missileImg3;  h1 =-0.8;  h2 =-0.5;  homing = 1.0;  break;
      case 10: w = 300*m;  h = 80*m;  Missile = missileImg4;  h1 =-1.0;  h2 =-0.8;  homing =-1.0;  break;
    }
    sMul1 = _sMul1 + h1;
    sMul2 = _sMul2 + h2;
    MissileSpeed = speed * random(sMul1*m, sMul2*m);
    homing += hom;
  }

  void Draw() {
    image(Missile, x, y, w, h);
    if (Click && Crashed == false) {
      x-=MissileSpeed;
      if (y > playerY) {
        y -= homing;
      } else if (y < playerY) {
        y +=homing;
      }
    }
    if (x+w < 0) {
      x = random(1400*m, 1800*m);
      missile(x,sMul1,sMul2,homing);
    }    
    if (playerX + playerW - 10 > x && playerX < x + w-10 && playerY + playerH > y + 10 && playerY < y + h) {
      Crash();
    }
  }
}
