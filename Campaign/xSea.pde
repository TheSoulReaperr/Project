float seaX;
float seaY;
float seaV[][];

void initSeas() {
  seaX = -100;
  seaV = new float[2000][2];
  for(int i=0; i<seaV.length;i++) {
    seaV[i][0] = seaX;
    seaV[i][1] = sin(seaX)*10;
    seaX+=200;
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------

void drawSeas(float Y) {
  switch(level) {
    case 6 : fill(100,150,255); break;
    case 7 : fill(125,150,255); break;
    case 8 : fill(70,110,255);  break;
    case 9 : fill(#354793);     break;
    case 10: fill(#304083);     break;
  }
  stroke(255);
  strokeWeight(10);
  beginShape();
  vertex(0, height);
  for (int i=0; i<seaV.length; i++) {
    if (seaV[i][0] > -250 && seaV[i][0] < width+250) {
      vertex(seaV[i][0],Y + seaV[i][1]);
    }
  }
  vertex(width, height);
  endShape();
  for (int i=0; i<seaV.length; i++) {
    seaV[i][0] -=speed/2;
  }
  
  if(playerY + playerH > Y) {
    Crash();
  }
}
