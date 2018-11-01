void keyPressed() {
  if (GameScreen == 0) {
    if (key == ' ' ) {
      Start();
    }
  } else if (GameScreen == 1) {
    if (key == 'w' || keyCode == UP)    up = true;
    if (key == 's' || keyCode == DOWN)  down = true;
    if (key == 'a' || keyCode == LEFT)  left = true;
    if (key == 'd' || keyCode == RIGHT) right = true;
  } else if (GameScreen == 2) {
    if (key == ' ' ) {
      Start();
      initBuildings();
    }
  }
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

void keyReleased() {
  if (GameScreen ==1) {
    if (key == 'w' || keyCode == UP)    up = false;
    if (key == 's' || keyCode == DOWN)  down = false;
    if (key == 'a' || keyCode == LEFT)  left = false;
    if (key == 'd' || keyCode == RIGHT) right = false;
  }
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

void mousePressed() {
  if (GameScreen == 0)  Start();
  if (GameScreen == 2) { Start(); initBuildings(); }
}
