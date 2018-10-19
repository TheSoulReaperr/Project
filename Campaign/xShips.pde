PImage ship1;
Ship ships[];

void initShips() {
  float shipX = random(100, 2000);
  ships = new Ship[5];
  for (int i=0; i<ships.length; i++) {
    ships[i] = new Ship(shipX);
    shipX+=random(1000, 5000);
  }
}

void drawShips(float y) {
  for (int i=0; i<ships.length; i++) {
    ships[i].Draw(y);
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------

class Ship {
  float x;
  float y;
  float w;
  float h;

  Ship(float _x) {
    x = _x;
    w = 400;
    h = 150;
  }

  void Draw(float y) {
    image(ship1, x, y, w, h);
    x-=speed/2;
    if (playerY + playerH > y+40) {
      if (playerX+playerW > x && playerX < x+w) {
        Crash();
      }
    }
  }
}
