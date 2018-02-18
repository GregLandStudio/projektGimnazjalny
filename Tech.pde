
class Question{
  String question;
  String[] answers;
  public String toString(){
    String ans = "";
    for(int i = 0;i<answers.length;i++)
      ans+="\n"+getNthLetterOfTheAlphabet(i+1)+": "+answers[i];
    return question+ans;
  }
}

char getNthLetterOfTheAlphabet(int n){
  assert(n>=1&&n<=("ABCDEFGHIJKLMNOPQRSTUVWXYZ").length()+1) : "There is no "+n+(n%10==1?"st":n%10==2?"nd":n%10==3?"rd":"th")+" letter of the alphabet!";
  return ("ABCDEFGHIJKLMNOPQRSTUVWXYZ").toCharArray()[n-1];
}

ArrayList<Question> questions = new ArrayList<Question>();
int qid = 0;
Question current;


void update(){
  current=questions.get(qid);
}

void loadQuestions(String fn){
  String[] lines = loadStrings(fn);
  for(int i = 0;i<lines.length;){
    if(lines[i].startsWith("Q:")){
      Question q=new Question();
      q.answers=new String[0];
      q.question=lines[i].replace("Q:","");
      while(++i<lines.length&&!lines[i].startsWith("Q:")){
        q.answers=append(q.answers,lines[i]);
      }
      //println(q);
      questions.add(q);
    }else{
      screen=3253;
    }
  }
}