PImage player1;
PImage player2;
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
  p1X = 50;
  p1Y = height/5;
  p2X = 50;
  p2Y = height/1.5;
  pW = 120;
  pH = 60;
  pSpeed = 12;
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawPlayers() {
  tint(255,0,255,255);
  image(player1,p1X,p1Y,pW,pH);
  if(p1X <= 0) p1X = 0;
  if(p1Y <= 0) p1Y = 0;
  if(p1X + pW >= width) p1X = width - pW;
  if(p1UP)    p1Y-=pSpeed*1.3;
  if(p1DOWN)  p1Y+=pSpeed;
  if(p1LEFT)  p1X-=pSpeed;
  if(p1RIGHT) p1X+=pSpeed;
  p1Y += gravity;
  if(p1Y > height) Crash(2);
  
  tint(255,255,0,255);
  image(player2,p2X,p2Y,pW,pH);
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
