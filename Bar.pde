class Bar {
  private PVector location, velocity, acceleration;
  private boolean horizontal;
  private int topSpeed, strokeWeight;
  
  public Bar() {
    this.horizontal = random(1) > .5;
    this.location = new PVector(-100, -100);
    this.velocity = new PVector(0, 0);
    this.acceleration = PVector.random2D();
    this.topSpeed = 5;
    this.strokeWeight = (int)random(50);
  }
  
  public void draw(){
    if (!gameOver) {
      strokeWeight(strokeWeight);
      velocity.add(acceleration);
      velocity.limit(topSpeed);
      
      location.add(velocity);
    }
    if (horizontal) {
      line(0, location.y, width, location.y);
      
      if (location.y > height * 1.2) {
        location.y = 0;
      }
      if (mousePressed) {
        if (mouseY > location.y - strokeWeight / 2 && mouseY < location.y + strokeWeight / 2) {
          gameOver = true;
        }
      }
    } else {
      line(location.x, 0, location.x, height);
      
      if (location.x > width * 1.2) {
        location.x = 0;
      }
      if (mousePressed) {
        if (mouseX > location.x - strokeWeight / 2 && mouseX < location.x + strokeWeight / 2) {
          gameOver = true;
        }
      }
    }

  }
}