float vertices1[];
float caveX = 0;
float x;
float y;

void initCaves() {
  vertices1 = new float[width];
  for(int i=0;i<width;i++){
    vertices1[i] = random(-5,5);
  }
  x=0;
}

//------------------------------------------------------------------------------------------------

void drawCave(float _h) {
  color c = 0;
  fill(0,0);
  noStroke();
  switch(level) {
    case 16 : c=#C18639; break;
    case 17 : c=#83550F; break;
    case 18 : c=#418B31; break;
    case 19 : c=#765319; break;
    case 20 : c=#B47D24; break;
  }
  fill(c,180);
  pushMatrix();
  x-=speed;
  translate(x,y);
  beginShape();
  vertex(0,0);
  for(int i=0;i<width;i++){
    vertex(caveX+i*20,_h+vertices1[i]);
  }
  vertex(width,-height);
  endShape();
  
  beginShape();
  vertex(0,height);
  for(int i=0;i<width;i++){
    vertex(caveX+i*20,height-_h+vertices1[i]);
  }
  vertex(width,height*2);
  endShape();
  popMatrix();
  
  if(playerY < _h || playerY + playerH > height - _h) {
    Crash();
  }
}
