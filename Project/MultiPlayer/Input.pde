void keyPressed() {
  if(GameScreen == 0 ) {
    if(key == ' ' ) {
      Start();
    }
  }
  else if(GameScreen == 1) {
    if(key == 'w')  p1UP = true;
    if(key == 's')  p1DOWN = true;
    if(key == 'a')  p1LEFT = true;
    if(key == 'd')  p1RIGHT = true;
    if(keyCode == UP)    p2UP = true;
    if(keyCode == DOWN)  p2DOWN = true;
    if(keyCode == LEFT)  p2LEFT = true;
    if(keyCode == RIGHT) p2RIGHT = true;
  }
  else if(GameScreen == 2) {
    if(key == ' ') {
      Start();
    }
  }
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

void keyReleased() {
  if(GameScreen == 1) {
    if(key == 'w')  p1UP = false;
    if(key == 's')  p1DOWN = false;
    if(key == 'a')  p1LEFT = false;
    if(key == 'd')  p1RIGHT = false;
    if(keyCode == UP)    p2UP = false;
    if(keyCode == DOWN)  p2DOWN = false;
    if(keyCode == LEFT)  p2LEFT = false;
    if(keyCode == RIGHT) p2RIGHT = false;
  }
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

void mousePressed() {
  if (GameScreen == 0)  Start();
  if (GameScreen == 2)  Start();
}
