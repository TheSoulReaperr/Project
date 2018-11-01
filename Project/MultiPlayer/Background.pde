Mountain mountains[];
Cloud clouds[];
float MountX;

void drawBackground() {
  background(#8AC3D8);
  for(int i=0; i< mountains.length ; i++) {
    mountains[i].Draw();
  }
  noStroke();
  for (int i=0; i<clouds.length; i++) {
    clouds[i].move();
  }
}

//--------------------------------------------------------------------------------------------------------------------------------

void initBackground() {
  //Clouds
  clouds = new Cloud[5];
  for (int i=0; i<clouds.length; i++) {
    clouds[i] = new Cloud();
  }
  //Mountains
  MountX = -500*m;
  float y = 800*m;
  float w;
  float h;
  mountains = new Mountain[40];
  for(int i=0;i < mountains.length;i++) {
    w = random(400,800)*m;
    h = random(250,300)*m;
    mountains[i] = new Mountain(MountX,y,w,h);
    MountX += w - w/random(3*m,7*m);
  }
}

//--------------------------------------------------------------------------------------------------------------------------------

class Cloud
{
  float x = random(0, 1400*m);
  float y = random(50*m, height);
  float size = random(50*m, 90*m);

  void resetCoords()
  {    
    x = random(1400*m, 1800*m);
    y = random(0, height);
    size = random(50*m, 90*m);
  }

  void move()
  {
    fill(255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, size, size);
    ellipse(x+size/2, y+size/3, size*0.9, size*0.9);
    ellipse(x, y+size/1.5, size*0.85, size*0.85);
    ellipse(x-size/1.5, y+size/4, size*0.9, size*0.9);
    ellipse(x-size/1.4, y+size/1.5, size*1.1, size*0.7);
    ellipse(x-size*1.25, y+size/2, size*0.75, size*0.75);
    x -= speed*(y/450*m)+0.5;    
    if (x < - 150*m)
    {
      resetCoords();
    }
  }
}

//--------------------------------------------------------------------------------------------------------------------------------

class Mountain {
  float x;
  float y;
  float w;
  float h;
  
  Mountain(float _x,float _y,float _w,float _h) {
    x = _x*m;
    y = _y*m;
    w = _w*m;
    h = _h*m;
  }
  
  void Draw() {
    noStroke();
    fill(#85D1B2);
    triangle(x,y,x+w/2,y-h,x+w,y);
    x-=speed/2;
    if(x <= -1100*m) {
      MountX = 1400*m;
    }
  }
}
