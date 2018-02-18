
void setup(){
  size(800,600);
  //questions.add(new Question());
  loadQuestions("data/Q&A.txt");
}

void draw(){
  update();
  // Yellow Submarine
  graphics();
}
