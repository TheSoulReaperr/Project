PImage playerImg;
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
  playerSpeed = 20;
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawPlayer() {
  pushMatrix();
  translate(playerX, playerY);
  if (playerX >= 0) {
    if (keyPressed && Click && Crashed == false && Win == false) {
      if (keyCode == UP) {
        rotate(-0.1);
        image(playerImg, 0, 0, playerW, playerH);
        rotate(0.1);
        playerY-=playerSpeed*1.4;
      } 
      else if (keyCode == DOWN) {
        rotate(0.2);
        playerY+=playerSpeed*0.8;
        image(playerImg, 0, 0, playerW, playerH);
        rotate(-0.1);
      } 
      else if (keyCode == RIGHT) {
        rotate(0.1);
        playerX+=playerSpeed/2;
        playerY-=playerSpeed/1.5;
        image(playerImg, 0, 0, playerW, playerH);
        rotate(-0.1);
      } 
      else if (keyCode == LEFT) {
        rotate(-0.1);
        playerX-=playerSpeed;
        image(playerImg, 0, 0, playerW, playerH);
        rotate(0.1);
      } 
      else image(playerImg, 0, 0, playerW, playerH);
    } 
    else image(playerImg, 0, 0, playerW, playerH);
  } 
  else image(playerImg, 0, 0, playerW, playerH);
  
  if (playerX <= 0) {   
    playerX=0;
  }
  if (playerY < 0) {   
    playerY=0;
  }
  if (playerY + playerW > width) {   
    playerX = width - playerW;
  }
  if(playerY > height) {
     Crashed = true;
  }
  playerY+=gravity;
  translate(-playerX, -playerY);
  popMatrix();
}
