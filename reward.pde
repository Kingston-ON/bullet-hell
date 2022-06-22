class Reward extends GameObject {

  int time;
  Reward () {
    super(random(width), random(height/4, 3*height/4), random(2, 4), random(-4, 6), 30, 0, 1, 0);
    //y = size;
    time=0;
  }

  

  void act() {
    time++;
    if (time >= 300) lives = 0;
    interactions();
  }
  void interactions() {
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Starfighter) {
        if (collidingWith(obj)) {
          obj.level++;
          player1.threshold --;
          lives--;
          objects.add(new Reward());
          objects.add(new Explode(x, y));
        }
      }
      i++;
    }
  }
}
