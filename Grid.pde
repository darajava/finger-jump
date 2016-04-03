class Grid {
  public ArrayList<Bar> bars = new ArrayList<Bar>();

  public void addBar(){
    bars.add(new Bar(false));
    bars.add(new Bar(true));
  }
  
  public void draw(){
    for (int i = 0; i < bars.size(); i++) {
      bars.get(i).draw();
    }
  }
}