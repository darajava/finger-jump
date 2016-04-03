class Bar {
  private PVector location, velocity, acceleration;
  private boolean horizontal;
  private int topSpeed;
  
  public Bar() {
    this.horizontal = random(1) > .5;
    this.location = new PVector(0, 0);
    this.velocity = PVector.random2D().mult(10);
    this.acceleration = PVector.random2D().mult(10);
    this.topSpeed = 5;
  }
  
  public void draw(){
    
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    
    location.add(velocity);
    if (horizontal) {
      line(0, location.y, width, location.y);
      
      if (location.y > height * 1.2) {
        location.y = 0;
      }
    } else {
      line(location.x, 0, location.x, height);
      
      if (location.x > height + random(100)) {
        location.x = 0;
      }
    }
  }
}