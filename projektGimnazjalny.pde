
void setup(){
  size(800,600);
  //questions.add(new Question());
  loadQuestions("data/Q&A.txt");
  update();
  load_obj();
}

void draw(){
  if(qid == questions.size() && end == true)
  {
     screen = 3;
  }
  else
  {
  update();
  }
  graphics();
}
