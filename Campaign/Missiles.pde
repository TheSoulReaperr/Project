Missile missiles[];
PImage missileImg1;

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
  float MissileSpeed;
  float speedMul;
  float sMul1;
  float sMul2;
  float homing;

  Missile(float _x, float _sMul1,float _sMul2, float hom) {
    if(level <= 5)  {  y = random(0, height);  }
    else if(level <= 10) { y = random(0,600); }
    else if(level <= 15) { y = random(200,500); }
    else if(level <= 20) { y = random(0,500); }
    x = _x;
    w = random(100, 120);
    h = random(30, 40);
    sMul1 = _sMul1;
    sMul2 = _sMul2;
    MissileSpeed = speed * random(sMul1, sMul2);
    homing = hom;
  }

  void Draw() {
    image(missileImg1, x, y, w, h);
    if (Click && Crashed == false) {
      x-=MissileSpeed;
      if (y > playerY) {
        y -= homing;
      } else if (y < playerY) {
        y +=homing;
      }
    }
    if (x+w < 0) {
      if(level <= 5)  {  y = random(0, height);  }
      else if(level <= 10) { y = random(0,600); }
      else if(level <= 15) { y = random(200,500); }
      else if(level <= 20) { y = random(0,500); }
      x = random(1400, 1800);
      w = random(100, 120);
      h = random(30, 40);
      MissileSpeed = speed * random(sMul1,sMul2);
    }    
    if (playerX + playerW - 10 > x && playerX < x + w-10 && playerY + playerH > y + 10 && playerY < y + h) {
      Crash();
    }
  }
}
