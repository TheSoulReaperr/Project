FinishLine finish;

void drawfinish() {
  finish.Draw();
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class FinishLine {
  float x;
  float l;
  
  FinishLine(float _x) {
    x = _x*m;
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
    rectMode(CORNER);
    strokeWeight(10);
    //line(x-(100*m),0,x-(100*m),height);
    //line(x,0,x,height);
    //textSize(100*m);
    //textAlign(CENTER,CENTER);
    //text("F",x-50*m,150*m);
    //text("I",x-50*m,250*m);
    //text("N",x-50*m,350*m);
    //text("I",x-50*m,450*m);
    //text("S",x-50*m,550*m);
    //text("H",x-50*m,650*m);
    fill(0);
    rect(x-100,-30,width,height+60);
    line(x-100,0,x-100,height);
    x-=speed;
    if(playerX+playerW>= x) {
      Win = true;
    }
  } 
}
