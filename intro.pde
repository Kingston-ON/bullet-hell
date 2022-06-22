void intro(){
  background(0,0,255);
  image(spaceship, width/2, height/2, 400, 400);
  textSize(40);
  text("press 'q' for free mode", 2*width/3, 7*height/8);
  if (f) {
    player = true;
    mode =GAME;
  }
  if (q) {
    free = true;
    mode = GAME;
  }
}

void introClicks(){
  mode = GAME;
}
