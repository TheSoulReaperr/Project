Hill hills[];
float Hillx;

void initHills() {
  Hillx = -200*m;
  float y =1000*m;
  float w;
  float h;
  switch(level) {
    case 2 : y = 1000*m; break;
    case 11: y = 900*m;  break;
    case 12: y = 900*m;  break;
  }
  hills = new Hill[15];
  for(int i=0; i<hills.length;i++) {
    w = random(500,2000)*m;
    h = random(700,900)*m;
    hills[i] = new Hill(Hillx,y,w,h);
    Hillx += w - w/random(5*m,7*m);
  }
}

void drawHills() {
  for(int i=0; i<hills.length;i++) {
    hills[i].Draw();
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Hill {
  float x;
  float y;
  float w;
  float h;
  
  Hill(float _x,float _y,float _w,float _h) {
    x = _x*m;
    y = _y*m;
    w = _w*m;
    h = _h*m;
  }
  
  void Draw() {
    ellipseMode(CENTER);
    noStroke();   
    switch(level) {
      case 2 : fill(#75FCAC); break;
      case 11: fill(#75FCAC); break;
      case 12: fill(#F7BD50); break;
    }
    
    ellipse(x,y,w,h);
    x-=speed/2;
    if(x <= -3000*m) {
      x = Hillx;
    }
  }
}
