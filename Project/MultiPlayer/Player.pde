PImage plane1;
PImage plane2;
PImage plane3;
PImage plane4;
PImage planeImg;
boolean p1UP;
boolean p1DOWN;
boolean p1LEFT;
boolean p1RIGHT;
boolean p2UP;
boolean p2DOWN;
boolean p2LEFT;
boolean p2RIGHT;
float p1X;
float p1Y;
float p2X;
float p2Y;
float pW;
float pH;
float pSpeed;

void initPlayers() {
  p1UP = false;
  p1DOWN = false;
  p1LEFT = false;
  p1RIGHT = false;
  p2UP = false;
  p2DOWN = false;
  p2LEFT = false;
  p2RIGHT = false;
  p1X = 50*m;
  p1Y = height/5;
  p2X = 50*m;
  p2Y = height/1.5;
  switch(plane) {
    case 1 : planeImg = plane1; pW = 130*m; pH = 60*m; pSpeed = 10*m;  break;  
    case 2 : planeImg = plane2; pW = 150*m; pH = 60*m; pSpeed = 12*m;  break;
    case 3 : planeImg = plane3; pW = 150*m; pH = 60*m; pSpeed = 16*m; break;
    case 4 : planeImg = plane4; pW = 150*m; pH = 40*m; pSpeed = 16*m; break;
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawPlayers() {
  tint(255,100,255);
  image(planeImg,p1X,p1Y,pW,pH);
  if(p1X <= 0) p1X = 0;
  if(p1Y <= 0) p1Y = 0;
  if(p1X + pW >= width) p1X = width - pW;
  if(p1UP)    p1Y-=pSpeed*1.3;
  if(p1DOWN)  p1Y+=pSpeed;
  if(p1LEFT)  p1X-=pSpeed;
  if(p1RIGHT) p1X+=pSpeed;
  p1Y += gravity;
  if(p1Y > height) Crash(1);
  
  tint(255,100,50);
  image(planeImg,p2X,p2Y,pW,pH);
  if(p2X <= 0) p2X = 0;
  if(p2Y <= 0) p2Y = 0;
  if(p2X + pW >= width) p2X = width - pW;
  if(p2UP)    p2Y-=pSpeed*1.3;
  if(p2DOWN)  p2Y+=pSpeed;
  if(p2LEFT)  p2X-=pSpeed;
  if(p2RIGHT) p2X+=pSpeed;
  p2Y += gravity;
  if(p2Y > height) Crash(1);
}
