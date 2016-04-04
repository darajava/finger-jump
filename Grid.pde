class Grid {
  public ArrayList<Bar> bars = new ArrayList<Bar>();
  private int ticks = 2000;
  private float rotation;
  
  public void addBar(){
    if (ticks < 1000) {
      if (ticks % 190 == 0) {
        bars.add(new Bar(true));
      }
    } else if (ticks < 2000) {
      if (ticks % 200 == 0) {
        bars.add(new Bar(false));
      }
    } else if (ticks < 3000) {
      if (ticks % 100 == 0) {
        for (int i = 0; i < bars.size(); i++) {
          if (random(1) < 0.2) {
            bars.get(i).changeDirection();
          }
        }
      }
   } else if (ticks < 4000 && ticks % 100 == 0){
         for (int i = 0; i < bars.size(); i++) {
            bars.get(i).incStroke();
         }
    } else if (ticks < 5000 && ticks % 100 == 0){
       bars.remove(0);
    }
  }
  public Grid(){
    for(int i = 0; i < 10; i++)
            bars.add(new Bar(random(1) > 0.5));

  }
  public void draw(){
    addBar();
    ticks++;
    //text(ticks, width/2, height/2);
    
    for (int i = 0; i < bars.size(); i++) {
      bars.get(i).draw();
    }
  }
}