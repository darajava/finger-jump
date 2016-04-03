class Grid {
  public ArrayList<Bar> bars = new ArrayList<Bar>();
  private int ticks;
  
  public void addBar(){
    if (bars.size() <= 7) {
      if (ticks % (height/7) == 0) {
        bars.add(new Bar(true));
      }
    } else if (bars.size() < 13) {
      if (ticks % (width/6) == 0) {
        bars.add(new Bar(false));
      }
    }
  }
  
  public void draw(){
    addBar();
    ticks++;

    for (int i = 0; i < bars.size(); i++) {
      bars.get(i).draw();
    }
  }
}