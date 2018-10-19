FinishLine finish;

void drawfinish() {
  finish.Draw();
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class FinishLine {
  float x;
  float l;
  
  FinishLine(float _x) {
    x = _x;
  }
  
  void Draw() {
    switch(level) {
      case 1 : fill(100,255,100,200); stroke(100,255,100,200); break;
      case 2 : fill(100,150,255,200); stroke(100,150,255,200); break;
      case 3 : fill(100,150,255,200); stroke(100,150,255,200); break;
      case 4 : fill(255);             stroke(255);             break;
      case 5 : fill(255);             stroke(255);             break;
      case 6 : fill(255);             stroke(255);             break;
      case 7 : fill(255);             stroke(255);             break;
      case 8 : fill(255);             stroke(255);             break;
      case 9 : fill(255);             stroke(255);             break;
      case 10: fill(255);             stroke(255);             break;
      case 11: fill(100,150,200,200); stroke(100,150,200,200); break;
      case 12: fill(100,150,200,200); stroke(100,150,200,200); break;
      case 13: fill(255);             stroke(255);             break;
      case 14: fill(255);             stroke(255);             break;
      case 15: fill(255);             stroke(255);             break;
      case 16: fill(100,255,100,200); stroke(100,255,100,200); break;
      case 17: fill(255);             stroke(255);             break;
      case 18: fill(100,255,100,200); stroke(100,255,100,200); break;
      case 19: fill(255);             stroke(255);             break;
      case 20: fill(255);             stroke(255);             break;
    }
    strokeWeight(10);
    line(x-100,0,x-100,height);
    line(x,0,x,height);
    textSize(100);
    textAlign(CENTER,CENTER);
    text("F",x-50,150);
    text("I",x-50,250);
    text("N",x-50,350);
    text("I",x-50,450);
    text("S",x-50,550);
    text("H",x-50,650);
    x-=speed;
    if(playerX+playerW>= x) {
      Win = true;
    }
  } 
}
