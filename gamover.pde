void gameover() {
  background(255, 0, 0);
  textSize(100);
  if (player1.lives <= 0) {
    text("sorry you lose", width/8, height/3);
  } else if (player1.level >= 20) {
    text("congrats you won dhsfhsljgbsdfh", width/8, height/3);
  }
  text("press your mouse to continue", width/4, 5*height/6);
}

void gameoverClicks() {
  setup();
}
