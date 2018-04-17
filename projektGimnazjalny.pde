
void setup(){
  size(800,600);
  //questions.add(new Question());
  loadQuestions("data/Q&A.txt");
  update();
  load_obj();
}

void draw(){
  update();
  graphics();
}
