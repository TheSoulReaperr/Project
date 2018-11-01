Coin coins[];

void initCoins() {
  coins = new Coin[20];
  for (int i=0; i<coins.length; i++) {
    coins[i] = new Coin();
  }
}

void drawCoins() {
  for (int i=0; i<coins.length; i++) {
    coins[i].Draw();
  }
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Coin {
  float x;
  float y;
  float w;
  float h;
  int i =0;
  boolean hit = false;

  
  Coin() {
    x = random(1300, 10000)*m;
    y = random(30, 400)*m;
    w = 20*m;
    h = 20*m;
  }

  void Draw() {
    if (hit) {
      fill(0, 0);
      noStroke();
    } else {
      fill(#EDDA2D);
      stroke(#9D8A0D);
    }
    ellipse(x, y, w, h);
    x-=speed;

    if (x < -w) {
      x = random(1300, 10000)*m;
      y = random(30,400)*m;
      i = 0;
      hit = false;
    }
    
    if (playerX + playerW > x && playerX  < x + w && playerY + playerH  > y  && playerY < y + h) {
      if(i==0){
        if(plane == 2)
          coinAdd+=2;
        else
        coinAdd++;
        i=1;
      }
      hit = true;
    }
  }
}
