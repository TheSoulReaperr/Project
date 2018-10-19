Mountain mountains[];
Cloud clouds[];
float MountX;

void drawBackground() {
  background(#8AC3D8);
  for(int i=0; i< mountains.length ; i++) {
    mountains[i].Draw();
  }
  noStroke();
  fill(#6F4817);
  rect(width/2, 760, width, 160);
  fill(#4F2800);
  rect(width/2, 695, width, 30);
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
  MountX = -500;
  float y = 700;
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

//--------------------------------------------------------------------------------------------------------------------------------

class Cloud
{
  float x = random(0, 1400);
  float y = random(50, 250);
  float size = random(50, 90);

  void resetCoords()
  {    
    x = random(1400, 1800);
    y = random(0, 300);
    size = random(50, 90);
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
    x -= speed*(y/450)+0.5;    
    if (x < - 150)
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
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
  
  void Draw() {
    noStroke();
    fill(#85D1B2);
    triangle(x,y,x+w/2,y-h,x+w,y);
    x-=speed/2;
    if(x <= -1100) {
      MountX = 1400;
    }
  }
}
