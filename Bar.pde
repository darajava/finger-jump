class Bar {
  private PVector location, velocity, acceleration;
  private boolean horizontal;
  private int topSpeed, strokeWeight = height/100;
  
  public Bar(boolean horizontal) {
    this.horizontal = horizontal;
    this.location = new PVector(0, 0);
    this.velocity = new PVector(1, 1);
    this.velocity.add(PVector.random2D());
    this.topSpeed = 5;
  }
  
  public void incStroke(){
    this.strokeWeight+=2;
  }
  
  public void draw(){
    if (!gameOver) {
      strokeWeight(strokeWeight);
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