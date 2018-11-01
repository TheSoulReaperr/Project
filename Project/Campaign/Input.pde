void keyPressed() {
  if (key == 32) {
    startGame();
    if (Crashed)
      restartGame();
  }
  if (level >=0 && level <=20) {
    if (key == 'Q') {
      level++;
      Win = false;
      Click = false;
      restartGame();
    }
    if (key == 'W') {
      level--;
      Win = false;
      Click = false;
      restartGame();
    }
  }
  
  if(Click && Crashed == false && Win == false) {
    if (key == 'w' || keyCode == UP)    up = true;
    if (key == 's' || keyCode == DOWN)  down = true;
    if (key == 'a' || keyCode == LEFT)  left = true;
    if (key == 'd' || keyCode == RIGHT) right = true;
  }
  
  if(Win) {
    if(key == ' ') {
      level++;
      Win = false;
      Click = false;
      restartGame();
    }
  }
}

void mousePressed() {
  startGame();
  if (Crashed)
    restartGame();
  if (Win) {
    level++;
    restartGame();
    Win = false;
    Click = false;
  }
}

void keyReleased() {
  if(Click && Crashed == false && Win == false) {
    if (key == 'w' || keyCode == UP)    up = false;
    if (key == 's' || keyCode == DOWN)  down = false;
    if (key == 'a' || keyCode == LEFT)  left = false;
    if (key == 'd' || keyCode == RIGHT) right = false;
  }
}
