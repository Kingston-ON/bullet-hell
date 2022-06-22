class Starfighter extends GameObject {

  int cooldown, threshold;

  Starfighter() {
    super(width/2, height/2, 0, 0, 20, #FF0000, 10, 1);
    threshold = 20;
    cooldown = threshold;
  }

  void show() {
    super.show();
    image(spaceship, x, y, 4*size, 4*size);
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;

    if (space && cooldown >= threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }

    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith2(obj)) {
          if(!q) lives--;
          obj.lives = 0;
        }
      }
      i++;
    }

    if (up) vy = -5;
    if (y <= 3*size/2) y = 3*size/2 + 1;
    if (down) vy = 5;
    if (y >= height - 2*size) y = height - 3*size/2 -1;
    if (left) vx = -5;
    if (x <= 3*size/2) x = 3*size/2 + 1;
    if (right) vx = 5;
    if (x >= width - 2*size) x = width - 3*size/2 -1;

    if (!up && !down) vy *= 0.5;
    if (!left && !right) vx *= 0.5;
    super.act();
  }
}


class Starfighter2 extends GameObject {

  int cooldown, threshold;

  Starfighter2() {
    super(width/2, 3*height/4, 0, 0, 20, #FF0000, 10, 1);
    threshold = 20;
    cooldown = threshold;
  }

  void show() {
    
    image(spaceship, x, y, 4*size, 4*size);
    super.show();
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;

    if (ckey && cooldown >= threshold) {
      objects.add(new Bullet());
      cooldown = 0;
    }

    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith2(obj)) {
          lives--;
          obj.lives = 0;
        }
      }
      i++;
    }

    if (w) vy = -5;
    if (y <= 3*size/2) y = 3*size/2 + 1;
    if (s) vy = 5;
    if (y >= height - 2*size) y = height - 3*size/2 -1;
    if (a) vx = -5;
    if (x <= 3*size/2) x = 3*size/2 + 1;
    if (d) vx = 5;
    if (x >= width - 2*size) x = width - 3*size/2 -1;

    if (!up && !down) vy *= 0.5;
    if (!left && !right) vx *= 0.5;
    super.act();
  }
}
