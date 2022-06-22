void game() {
  fill(dblue, 100);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
  if (o) setup();
  if (!q) if ( player1.lives <= 0 || player1.level >= 20) mode = GAMEOVER;
}


void addObjects() {
  objects.add(0, new Star());
 //if(player) objects.add(player2);
  //number of enemy
  if (frameCount % 100 == 0) objects.add(new Enemy() );
  if (frameCount % 150 == 0) objects.add(new Enemy2() );
  if (frameCount % 200 == 0) objects.add(new Enemy3() );

  //tdy stuff
  int i = objects.size();
  alive = new boolean[i];
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.show();
    s.act();
    if (s.lives == 0) objects.remove(i);
    else i++;
  }
}

void debug() {
  fill(255);
  textSize(50);
  if (!q) text("lives = " + player1.lives, 20, 60);
  text("level = " + player1.level, 20, 100);
  //text ("threshold " + player1.threshold, 20, 160);
}

void gameClicks() {
  mode = PAUSE;
}
