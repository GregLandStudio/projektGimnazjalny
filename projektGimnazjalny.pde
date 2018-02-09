
void setup(){
  size(800,600);
  questions.add(new Question());
}

void draw(){
  questions.get(qid);
  update();
  // Yellow Submarine
  graphics();
}
