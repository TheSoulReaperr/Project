Mountain mountains[];
float MountX;

void initMountains() {
  MountX = -500;
  float y = 700;
  if(level == 1 || level == 4) y=800;
  else if(level == 11 || level == 14 || level == 15 ) y = 700;
  float w;
  float h;
  mountains = new Mountain[40];
  for(int i=0;i < mountains.length;i++) {
    w = random(400,800);
    h = random(250,300);
    mountains[i] = new Mountain(MountX,y,w,h);
    MountX += w - w/random(3,7);
  }
}

void drawMountains() {
  for(int i=0; i< mountains.length ; i++) {
    mountains[i].Draw();
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Mountain {
  float x;
  float y;
  float w;
  float h;
  
  Mountain(float _x,float _y,float _w,float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
  
  void Draw() {
    noStroke();
    switch(level) {
      case 1 : fill(#D89B4F); break;
      case 4 : fill(#054C0C); break;
      case 11: fill(#9CEA66); break;
      case 14: fill(#D3AA5E); break;
      case 15: fill(#D3AA5E); break;
    }
    triangle(x,y,x+w/2,y-h,x+w,y);
    x-=speed/2;
    if(x <= -1100) {
      MountX = 1400;
    }
  }
}
