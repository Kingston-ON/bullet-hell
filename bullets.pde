class Bullet extends GameObject {

  Bullet() {
    super(player1.x, player1.y, 0, -10, 5, #FF0000, 1, 0);
  }

  void act () {
    super.act();
    if (y<=0) lives--;
  }
}



class EnemyBullet extends GameObject {

  EnemyBullet (float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 5, yellow, 1, 0);
  }
  
  void act () {
    super.act();
    if (y>=height) lives--;
  }
}
