void keyPressed() {
  if (key == 32) {
    startGame();
    if (Crashed)
      restartGame();
  }
  if (level >=0 && level <=20) {
    if (key == 'q') {
      level++;
      Win = false;
      Click = false;
      restartGame();
    }
    if (key == 'w') {
      level--;
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
