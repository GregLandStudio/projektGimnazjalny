import java.io.*;
class Question {
  boolean hasImage;
  String question;
  String[] answers;
  PImage image;
  int background;
  int points=-1;
  int correct = 1;
  public String toString() {
    String ans = "";
    for (int i = 0; i<answers.length; i++)
      ans+="\n"+getNthLetterOfTheAlphabet(i+1)+": "+answers[i];
    return question+ans;
  }
}

char getNthLetterOfTheAlphabet(int n) {
  assert(n>=1&&n<=("ABCDEFGHIJKLMNOPQRSTUVWXYZ").length()+1) : "There is no "+n+(n%10==1?"st":n%10==2?"nd":n%10==3?"rd":"th")+" letter of the alphabet!";
  return ("ABCDEFGHIJKLMNOPQRSTUVWXYZ").toCharArray()[n-1];
}


int score = 0;

ArrayList<Question> questions = new ArrayList<Question>();
int qid = 0;
Question current;


void update() {
  assert(questions.size()>0) : "No questions were loaded!";
  current=questions.get(qid);
}

void loadQuestions(String fn) {
  String[] lines = loadStrings(fn);
  for (int i = 0; i<lines.length; ) {
    String line = lines[i];
    if((int)(line.charAt(0))==65279)
      line=line.substring(1);
    if (line.startsWith("Q:")) {
      Question q=new Question();
      q.hasImage=false;
      q.background=color(128);
      q.answers=new String[0];
      q.question=line.replace("Q:", "");
      line = lines[++i];
      while (i<lines.length&&!lines[i].startsWith("Q:")) {
        line = lines[i];
        if (line.startsWith("I:")){
          q.image=loadImage(line.replace("I:", ""));
          q.hasImage=true;
        }
        else if (line.startsWith("C:")){
          q.background=Integer.parseInt(line.replace("C:", ""),16);
          println(q.background);
        }
        else if (line.startsWith("P:"))
          q.points=Integer.parseInt(line.replace("P:", ""));
        else if (line.startsWith("T:"))
          q.correct=Integer.parseInt(line.replace("T:", ""));
        else
          q.answers=append(q.answers, line);
        i++;
      }
      questions.add(q);
    } else {
      screen=3253;
      return;
    }
  }
}