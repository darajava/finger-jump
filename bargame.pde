ArrayList<Bar> bars = new ArrayList<Bar>();
int score = 1;

void setup() {
  size(320, 480);
  frameRate(60);
  strokeWeight(height/100);
  bars.add(new Bar());
  
}

void draw() {
  background(100,300,100);

  if (score % 100 == 0) {
    bars.add(new Bar());
  }
  println(score);
  println(bars.size());
  
  if (mousePressed) {
    score++;
  }

  for (int i = 0; i < bars.size(); i++){
    bars.get(i).draw();
  }
}