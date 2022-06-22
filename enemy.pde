class Enemy extends GameObject {

  int cooldown, threshold, time;


  Enemy() {
    super(random(width), 0, 0, 3, 50, yellow, 1,0);
    threshold = 40;
    cooldown = threshold;
    time=0;
  }


  void show() {
    noFill();
    image(greenghost, x, y, size, size);

      //image(gif[currentPic],x,y,size,size);
      //currentPic++;
    
    if (currentPic>16) {
      currentPic = 0;
    }//image(explode, x, y, 2*size, 2*size);
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;
    if (cooldown >= threshold) {
      //shoot
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          obj.lives = 0;
          lives--;
          objects.add(new Reward());
          objects.add(new Explode(x, y));
        }
      }
      i++;
    }
  }
}

class Enemy2 extends GameObject {

  int cooldown, threshold;

  Enemy2() {
    super(random(width), 0, random(-3, 3), random(1, 3), 80, #00FF00, 1, 0);
    threshold = 50;
    cooldown = threshold;
  }

  void show() {
    noFill();

    image(redghost, x, y, size, size);
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;

    if (cooldown >= threshold) {
      //shoot
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          obj.lives = 0;
          lives--;
          objects.add(new Reward());
          objects.add(new Explode(x, y));
        }
      }
      i++;
    }
  }
}

class Enemy3 extends GameObject {

  int cooldown, threshold, reward, time;

  Enemy3() {
    super(random(width/4, 3*width/4), 0, random(5, 5), random(3, 6), 60, brown, 1, 0);
    threshold = 3;
    cooldown = threshold;
    reward = 0;
    time = 0;
  }

  void show() {
    noFill();
    image(blueghost, x, y, size, size);
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;

    if (cooldown >= threshold) {
      //shoot
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          obj.lives = 0;
          lives--;
          objects.add(new Reward());
          objects.add(new Explode(x, y));
        }
      }
      i++;
    }
  }
}
