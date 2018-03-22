
class Question {
  boolean hasImage;
  String question;
  String[] answers;
  PImage image;
  int background;
  int correct = 1; //dla answers.length == 2 może być równe 1 albo 2 ORAZ dla answers.length == 4 może być równe 1, 2, 3 albo 4 (zależy, która odp. jest poprawna)
  public String toString() {
    String ans = "";
    for (int i = 0; i<answers.length; i++)
      ans+="\n"+getNthLetterOfTheAlphabet(i+1)+": "+answers[i];
    return question+ans;
  }
}

char getNthLetterOfTheAlphabet(int n) {
  assert(n>=1&&n<=("ABCDEFGHIJKLMNOPQRSTUVWXYZ").length()+1) : 
  "There is no "+n+(n%10==1?"st":n%10==2?"nd":n%10==3?"rd":"th")+" letter of the alphabet!";
  return ("ABCDEFGHIJKLMNOPQRSTUVWXYZ").toCharArray()[n-1];
}

ArrayList<Question> questions = new ArrayList<Question>();
int qid = 0;
Question current;


void update() {
  assert(questions.size()>0) : 
  "No questions were loaded!";
  current=questions.get(qid);
}

void loadQuestions(String fn) {
  String[] lines = loadStrings(fn);
  for (int i = 0; i<lines.length; ) {
    if (lines[i].startsWith("Q:")) {
      Question q=new Question();
      q.hasImage=false;
      q.background=color(255);
      q.answers=new String[0];
      q.question=lines[i].replace("Q:", "");
      while (++i<lines.length&&!lines[i].startsWith("Q:")) {
        if (lines[i].startsWith("I:")){
          q.image=loadImage(lines[i].replace("I:", ""));
          q.hasImage=true;
        }
        else if (lines[i].startsWith("C:"))
          q.background=Integer.parseInt(lines[i].replace("C:", ""),16);
        else
          q.answers=append(q.answers, lines[i]);
      }
      //println(q);
      questions.add(q);
    } else {
      screen=3253;
    }
  }
}