PImage ship1;
PImage ship2;
PImage ship3;
PImage Ship;
Ship ships[];

void initShips() {
  float shipX = random(100, 2000)*m;
  ships = new Ship[8];
  for (int i=0; i<ships.length; i++) {
    ships[i] = new Ship(shipX);
    shipX+=random(1000, 5000)*m;
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
    x = _x*m;
    switch(int(random(0,4))) {
      case 1 : Ship = ship1; w = 450*m; h = 170*m; break;
      case 2 : Ship = ship2; w = 500*m; h = 150*m; break;
      case 3 : Ship = ship3; w = 400*m; h = 130*m; break;
    }
  }

  void Draw(float y) {
    image(Ship, x, y-h, w, h);
    x-=speed/2;
    if (playerY + playerH > y+(40*m)) {
      if (playerX+playerW > x && playerX < x+w) {
        Crash();
      }
    }
  }
}
