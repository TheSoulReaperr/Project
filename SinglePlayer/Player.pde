PImage player1;
boolean up;
boolean down;
boolean left;
boolean right;
float playerX;
float playerY;
float playerW;
float playerH;
float playerSpeed;

void initPlayer() {
  playerX = 50;
  playerY = height/3;
  playerW = 120;
  playerH = 60;
  playerSpeed = 12;
  up = false;
  down = false;
  left = false;
  right = false;
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawPlayer() {
  image(player1, playerX, playerY, playerW, playerH);
  if(playerX <=0) playerX = 0;
  if(playerY <=0) playerY = 0;
  if(playerX+playerW >= width) playerX = width-playerW;
  
  if(up)     playerY-=playerSpeed*1.3;
  if(down)   playerY+=playerSpeed;
  if(left)   playerX-=playerSpeed;
  if(right)  playerX+=playerSpeed;
  if(GameScreen ==1)
  playerY+=gravity;
}
