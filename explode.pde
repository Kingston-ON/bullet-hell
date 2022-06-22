class Explode extends GameObject {
  int i;
  Explode(float x, float y) {
    super(x, y, 0, 0, 200, 0, 1, 0);
    i=0;
  }
  void act() {
    i++;
    if (i>15) lives = 0;
  }

  void show() {
    image(gif[i], x, y, size, size);
    }
}
