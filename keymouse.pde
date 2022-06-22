void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (key == ' ') space = true;
  if (key == 'a') a = true;
  if (key == 's') s = true;
  if (key == 'd') d = true;
  if (key == 'w') w = true;
  if (key == 'f') f = true;
  if (key == 'x') ckey = true;
  if (key == 'q') q = true;
  if (key == 'o') o = true;
}

void keyReleased(){
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
  if (key == ' ') space = false;
  if (key == 'a') a = false;
  if (key == 's') s = false;
  if (key == 'd') d = false;
  if (key == 'w') w = false;
  //if (key == 'f') f = false;
  if (key == 'x') ckey= false;
  if (key == 'o') o = false;
}

void mouseReleased() {
  if (mode == INTRO) introClicks();
  else if (mode == GAME) gameClicks();
  else if (mode == PAUSE) pauseClicks();
  else if (mode == GAMEOVER) gameoverClicks();
}
